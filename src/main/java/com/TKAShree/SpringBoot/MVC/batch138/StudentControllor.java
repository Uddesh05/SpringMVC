package com.TKAShree.SpringBoot.MVC.batch138;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.persistence.Query;

@Controller
public class StudentControllor {

	
	@Autowired
	SessionFactory sf;
	
	@RequestMapping("/")
	public String name() {
		return "student";
		
	}
	@RequestMapping("/save")
	public ModelAndView save(Student student) {
		Session ss=sf.openSession();
		Transaction tx=ss.beginTransaction();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("student");
		ss.save(student);
		tx.commit();
		return mv;
	}
	@RequestMapping("/update")
	public ModelAndView update(Student student) {
		Session ss=sf.openSession();
		Transaction tx=ss.beginTransaction();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("student");
		ss.update(student);
		tx.commit();
		return mv;
	}
	@RequestMapping("/delete")
	public ModelAndView delete(int id) {
		Session ss=sf.openSession();
		Transaction tx=ss.beginTransaction();
		Student student=ss.get(Student.class,id);//only id
		ModelAndView mv=new ModelAndView();
		mv.setViewName("student");
		ss.delete(student);
		tx.commit();
		return mv;
	}
	
	@RequestMapping("/viewtable")
	public ModelAndView viewtable(){
		Session ss=sf.openSession();
		Query query=ss.createQuery("from Student");
		List<Student> al=((org.hibernate.query.Query) query).list();	
		ModelAndView view= new ModelAndView();
		view.addObject("al",al);
		System.out.println(al);
		view.setViewName("viewStudent");
		return view;
		
	}
	
}
