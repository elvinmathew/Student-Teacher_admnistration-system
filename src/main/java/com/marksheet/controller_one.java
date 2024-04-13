package com.marksheet;

import com.marksheet.services.CourseRepository;
import com.marksheet.services.MarksheetRepository;
import com.marksheet.services.StudentRepository;
import com.marksheet.services.TeacherRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class controller_one {
    @Autowired
    CourseRepository courseRepository;
    @Autowired
    TeacherRepository TeacherRepository;
    @Autowired
    StudentRepository studentRepository;
    @Autowired
    MarksheetRepository marksheetRepository;
    @RequestMapping("/")
    public  String home() {
        return "home";
    }

    @RequestMapping("/insert")
    public String insertStud(){
        return "insertview";
    }

    @PreAuthorize("hasRole('ADMIN')")
    @PostMapping("/saveinserted")
    @ResponseBody
    public ResponseEntity<String> saveinsertedStud(@ModelAttribute Student st, @ModelAttribute Marksheet marksheet) {
        try {
            marksheet.setStudent(st);
            System.out.println(st);
            System.out.println(marksheet);
//            studentRepository.save(st);
            marksheetRepository.save(marksheet);
            return ResponseEntity.ok("Data successfully inserted");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error inserting data");
        }
    }
    @RequestMapping("/askid")
    public String askid(){
        return "askid";
    }

    @RequestMapping("/marksheetview")
    public String viewmkt(@RequestParam("roll")int roll, Model model){
        try {
       Student student= studentRepository.findById(roll).get(); //get assumes the presence of data instead of optional
       Marksheet marksheet= marksheetRepository.findByStudent(student);
       model.addAttribute("student",student);
       model.addAttribute("marksheet",marksheet);
            return "marksheetview";
        }catch (Exception e){
            e.printStackTrace();
        }
        return "marksheetview";
    }

    @RequestMapping("/dltstudaskid")
    public String dltstudaskid (){
        return "dltstudaskid";

    }
    @PreAuthorize("hasRole('ADMIN')")
    @RequestMapping("/dltstud")
    @Transactional
    public ResponseEntity<String> dltstud(@RequestParam("roll")int roll){
        try{
            Student student =studentRepository.findById(roll).get(); //get assumes the presence of data instead of optional
            marksheetRepository.deleteByStudent(student);

        return ResponseEntity.ok("Data successfully deleted");
    } catch (Exception e) {
        e.printStackTrace();
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error deleting data");
    }
}
    @RequestMapping("/asktid")
    public String teacherview(Model model){
        List<Course> courseList = courseRepository.findAll();
        List<Teacher> teacherList = TeacherRepository.findAll();
        model.addAttribute("courses",courseList);
        model.addAttribute("teachers",teacherList);
        return "courseteacherview";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @RequestMapping("/updatestudent")
    public String upstud(){

        return "upstud";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @RequestMapping("/newstudentdetails")
    public ResponseEntity<String> newStudentDetails(Model model, @RequestParam("s_id") int s_id,
                                                    @RequestParam("s_name") String s_name,
                                                    @RequestParam("s_age") int s_age,
                                                    @RequestParam("s_std") int s_std,
                                                    @RequestParam("Physics") int physics,
                                                    @RequestParam("Chemistry") int chemistry,
                                                    @RequestParam("Mathematics") int mathematics) {

        try {
            Student existingStudent = studentRepository.findById(s_id).orElse(null);
            Marksheet existingMarksheet = marksheetRepository.findByStudent(existingStudent);

            if (existingStudent != null && existingMarksheet != null) {

                existingStudent.setS_name(s_name);
                existingStudent.setS_age(s_age);
                existingStudent.setS_std(s_std);


                existingMarksheet.setPhysics(physics);
                existingMarksheet.setChemistry(chemistry);
                existingMarksheet.setMathematics(mathematics);


                studentRepository.save(existingStudent);
                marksheetRepository.save(existingMarksheet);


                model.addAttribute("student", existingStudent);
                model.addAttribute("marksheet", existingMarksheet);
            }
                return ResponseEntity.ok("Data successfully updated");

        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error updating data");
        }
    }

    @RequestMapping("/updatefaculty")
    public String upFac(){

        return "upfac";


}   @PreAuthorize("hasRole('ADMIN')")
    @PostMapping("/updatefaculty")
    public ResponseEntity<String> updateFaculty(@RequestParam("c_id") int c_id,
                                                @RequestParam("c_name") String c_name,
                                                @RequestParam("t_id") int t_id,
                                                @RequestParam("t_name") String t_name) {

        try {

            Course existingCourse = courseRepository.findById(c_id).orElse(null);
            Teacher existingTeacher = TeacherRepository.findById(t_id).orElse(null);

            if (existingCourse != null && existingTeacher != null) {

                existingCourse.setC_name(c_name);

                existingTeacher.setT_name(t_name);


                courseRepository.save(existingCourse);
                TeacherRepository.save(existingTeacher);

                return ResponseEntity.ok("Data successfully updated");
            } else {

                return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Course or Teacher not found");
            }
        } catch (Exception e) {
            e.printStackTrace();

            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error updating data");
        }
    }
}