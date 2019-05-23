//This code asks the user for 4 numbers, and has them pick multiply them all by
// a different number that they pick as well
//declaration
int x1, x2, y1, y2, a, answer1, answer2, answer3 , answer4;
a = randint(1,5);

//Initialization
//This is when the user gets asked for 4 numbers
printf("Please pick four numbers, one at a time\n");
printf("Your first number\n");
scanf("%d",&x1);
printf("Please input your second number\n");
scanf("%d",&x2);
printf("Please input your third number\n");
scanf("%d",&y1);
printf("Pleae input your fourth number\n");
scanf("%d",&y2);

//This is where they pick a number to multiply there 4 numbers with
printf("Now that you have picked your 4 numbers, please pick a number to multiply them by one at a time\n");
printf("Now, the number you have to multiply them by is %d\n", a);
printf("OK, now you must multiply the same four number you picked by this number\n");

//Here they find out if they were correct or incorrect
scanf("%d",&answer1);
if(answer1==(x1*a)) {
    printf("Congratulations you got the right answer!\n");
}
else{
    printf("Sorry, but the right answer is actually, %d.\n", x1*a);
}


scanf("%d",&answer2);
if(answer2==(x2*a)) {
    printf("Congratulations, you got the right answer!\n");
}
else{
    printf("Sorry but the correct answer is %d.\n", x2*a);
}


scanf("%d",&answer3);
if(answer3==(y1*a)) {
    printf("Congratulations, you got the right answer!\n");
}
else{
    printf("Sorry but the correct answer is %d.\n", y1*a);
}


scanf("%d",&answer4);
if(answer4==(y2*a)) {
    printf("Congratulations, you got the right answer!\n");
}
else{
    printf("Sorry but the correct answer is %d.\n", y2*a);
}

//graph
#include <chplot.h>
CPlot plot;
plot.title("Part 1");
plot.label(PLOT_AXIS_X,"X-Axis");
plot.label(PLOT_AXIS_Y,"Y-Axis");
plot.ticsRange(PLOT_AXIS_X, 2);
plot.ticsRange(PLOT_AXIS_Y, 2);
plot.line(x1,y1,x2,y2);
plot.plotting();
