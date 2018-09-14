//引入
let gulp = require('gulp');
let sass = require('gulp-sass');

//创建任务
gulp.task('compileScss',function(){
    //引入scss文件
    gulp.src(['src/sass/*.scss'])
    //编译scss文件
    .pipe(sass({outputStyle:'expanded'}).on('error',sass.logError))
    //输出
    .pipe(gulp.dest('src/css/'))
});

//自动编译
gulp.task('autoScss',function(){
    //监听文件修改
    gulp.watch('src/sass/*.scss',['compileScss']);
});