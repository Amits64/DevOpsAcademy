import React from 'react';

const CourseCard = ({ title, description }) => {
  return (
    <div className="bg-white shadow-lg rounded-lg p-6">
      <h3 className="text-xl font-bold mb-2">{title}</h3>
      <p className="text-gray-700">{description}</p>
    </div>
  );
};

export default CourseCard;
