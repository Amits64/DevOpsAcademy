import React, { useEffect, useState } from 'react';
import CourseCard from '../components/CourseCard';
import { fetchCourses } from '../services/api';

const Home = () => {
  const [courses, setCourses] = useState([]);

  useEffect(() => {
    fetchCourses().then(data => setCourses(data));
  }, []);

  return (
    <div className="container mx-auto">
      <h1 className="text-3xl font-bold my-6">DevOps Courses</h1>
      <div className="grid grid-cols-3 gap-4">
        {courses.map(course => (
          <CourseCard key={course.id} title={course.title} description={course.description} />
        ))}
      </div>
    </div>
  );
};

export default Home;
