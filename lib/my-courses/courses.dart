class Course {
  final String? title, desc;
  Course({this.title, this.desc});
}

List<Course> courseInfo = [
  Course(
    title: "Computing I - IV",
    desc:
        "Deepens understading of software engineers by coding multiple projects.",
  ),
  Course(
    title: "Probability & Statistics",
    desc:
        "Use analytical skills to calculate the probability of events, estimation, hypothesis testing, regression, correlation",
  ),
  Course(
    title: "Ethics in Computing",
    desc:
        "Learn about major issues in computing society. Analysis of major trends in emerging computer technology and their potential effects on work, leisure, government, and humand relations",
  ),
  Course(
    title: "Mobile App Development I",
    desc:
        "Learn the fundamental principles of Android components, application architecture, and common Android libraries to create non-trivial mobile applications. Moreover, the completion of several Android projects that are evaluated on the functional correctness, coding style, and documentation",
  ),
  Course(
    title: "Database I",
    desc:
        "Comprehensive introduction to data modeling, design of databases, use of database management systems for applications, and exploration into the building of databases. It covers relational data models, relational algebra and SQL -- The standard language for creating, querying, and modifying relational databases.",
  ),
  Course(
    title: "Operating System",
    desc:
        "Learn about processes, concurrency and synchronization, deadlock, processor allocation, memory management, O/O devices and file management, and distributed processing. ",
  ),
];
