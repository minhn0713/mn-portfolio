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
    title: "Analysis of Algorithms",
    desc:
        "Development of more sophisticated ideas in data type and structure, with an introduction to the connection between data structures and the algorithms they support. Data abstraction. Controlled access structures. Trees, lists, stacks, queues, graphs, arrays, hash tables. Algorithm design strategies such as divide and conquer. Elementary techniques for analysis; asymptotic analysis, recursion equations, estimation methods, elementary combinatorial arguments. Examination of problem areas such as searching and sorting, and the indicated representations and algorithms. Establishing algorithmic correctness and estimating time and space complexity",
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
