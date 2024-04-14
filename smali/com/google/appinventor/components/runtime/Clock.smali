.class public Lcom/google/appinventor/components/runtime/Clock;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that provides the instant in time using the internal clock on the phone. It can fire a timer at regularly set intervals and perform time calculations, manipulations, and conversions.</p> <p>Methods to convert an instant to text are also available. Acceptable patterns are empty string, MM/DD/YYYY HH:mm:ss a, or MMM d, yyyyHH:mm. The empty string will provide the default format, which is \"MMM d, yyyy HH:mm:ss a\" for FormatDateTime \"MMM d, yyyy\" for FormatDate. To see all possible format, please see <a href=\"https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html\" _target=\"_blank\">here</a>. </p> "
    iconName = "images/clock.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Z

.field private KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Z

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Clock;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Z

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    .line 55
    new-instance v0, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 65
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Clock;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    :cond_0
    return-void
.end method

.method public static AddDays(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some days after the argument"
    .end annotation

    .line 356
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x5

    .line 357
    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddDuration(Ljava/util/Calendar;J)Ljava/util/Calendar;
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some duration after the argument"
    .end annotation

    .line 328
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    .line 329
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAddInMillis(Ljava/util/Calendar;J)V

    return-object p0
.end method

.method public static AddHours(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some hours after the argument"
    .end annotation

    .line 349
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/16 v0, 0xb

    .line 350
    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddMinutes(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some minutes after the argument"
    .end annotation

    .line 342
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/16 v0, 0xc

    .line 343
    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddMonths(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some months after the argument"
    .end annotation

    .line 370
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x2

    .line 371
    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddSeconds(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some seconds after the argument"
    .end annotation

    .line 335
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/16 v0, 0xd

    .line 336
    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddWeeks(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some weeks after the argument"
    .end annotation

    .line 363
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x3

    .line 364
    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddYears(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some years after the argument"
    .end annotation

    .line 377
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 378
    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static DayOfMonth(Ljava/util/Calendar;)I
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The day of the month"
    .end annotation

    .line 490
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Day(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static Duration(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Milliseconds elapsed between instants"
    .end annotation

    .line 391
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static DurationToDays(J)J
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to days"
    .end annotation

    const/4 v0, 0x5

    .line 435
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static DurationToHours(J)J
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to hours"
    .end annotation

    const/16 v0, 0xb

    .line 424
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static DurationToMinutes(J)J
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to minutes"
    .end annotation

    const/16 v0, 0xc

    .line 413
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static DurationToSeconds(J)J
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to seconds"
    .end annotation

    const/16 v0, 0xd

    .line 402
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static DurationToWeeks(J)J
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to weeks"
    .end annotation

    const/4 v0, 0x3

    .line 446
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static FormatDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text representing the date of an instant in the specified pattern"
    .end annotation

    .line 580
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 582
    :catch_0
    new-instance p0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p1, "Illegal argument for pattern in Clock.FormatDate. Acceptable values are empty string, MM/dd/YYYY, or MMM d, yyyy. For all possible patterns, see https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html"

    const-string v0, "Sorry to be so picky."

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static FormatDateTime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text representing the date and time of an instant in the specified pattern"
    .end annotation

    .line 561
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatDateTime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 563
    :catch_0
    new-instance p0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p1, "Illegal argument for pattern in Clock.FormatDateTime. Acceptable values are empty string, MM/dd/YYYY hh:mm:ss a, MMM d, yyyy HH:mm For all possible patterns, see https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html"

    const-string v0, "Sorry to be so picky."

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static FormatTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text representing the time of an instant"
    .end annotation

    .line 597
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetMillis(Ljava/util/Calendar;)J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The instant in time measured as milliseconds since 1970."
    .end annotation

    .line 323
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Hour(Ljava/util/Calendar;)I
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The hour of the day"
    .end annotation

    .line 479
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Hour(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static MakeInstant(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time specified by MM/dd/YYYY hh:mm:ss or MM/dd/YYYY or hh:mm"
    .end annotation

    .line 203
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->DateValue(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 205
    :catch_0
    new-instance p0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Argument to MakeInstant should have form MM/dd/YYYY hh:mm:ss, or MM/dd/YYYY or hh:mm"

    const-string v1, "Sorry to be so picky."

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static MakeInstantFromMillis(J)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time specified by the milliseconds since 1970."
    .end annotation

    .line 310
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Now()Ljava/util/Calendar;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public static Minute(Ljava/util/Calendar;)I
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The minute of the hour"
    .end annotation

    .line 468
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Minute(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static Month(Ljava/util/Calendar;)I
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The month of the year represented as a number from 1 to 12)"
    .end annotation

    .line 525
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Month(Ljava/util/Calendar;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static MonthName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The name of the month"
    .end annotation

    .line 536
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->MonthName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Now()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The current instant in time read from phone\'s clock"
    .end annotation

    .line 187
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Now()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static Second(Ljava/util/Calendar;)I
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The second of the minute"
    .end annotation

    .line 457
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Second(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static SystemTime()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The phone\'s internal time"
    .end annotation

    .line 181
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Timer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Weekday(Ljava/util/Calendar;)I
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The day of the week represented as a number from 1 (Sunday) to 7 (Saturday)"
    .end annotation

    .line 502
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Weekday(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The name of the day of the week"
    .end annotation

    .line 513
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Year(Ljava/util/Calendar;)I
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The year"
    .end annotation

    .line 547
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Year(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public MakeDate(III)Ljava/util/Calendar;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the clock to be a date value.\nValid values for the month field are 1-12 and 1-31 for the day field.\n"
    .end annotation

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    .line 224
    :try_start_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, p1, v0, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 225
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 229
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x961

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "MakeDate"

    invoke-virtual {v0, p0, v3, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 234
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public MakeInstantFromParts(IIIIII)Ljava/util/Calendar;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the date and time to be displayed when the clock opens.\nValid values for the month field are 1-12 and 1-31 for the day field.\n"
    .end annotation

    const-string v0, "MakeInstantFromParts"

    add-int/lit8 v1, p2, -0x1

    const/16 v2, 0x961

    const/4 v3, 0x0

    .line 277
    :try_start_0
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, p1, v1, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 278
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 282
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 287
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    .line 290
    :try_start_1
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 291
    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 292
    invoke-virtual {p1, p2, p6}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 295
    :catch_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v0, v2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-object p1
.end method

.method public MakeTime(III)Ljava/util/Calendar;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the time of the clock - Valid format is hh:mm:ss\n"
    .end annotation

    .line 248
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xb

    .line 250
    :try_start_0
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 251
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 252
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x961

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "MakeTime"

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public Timer()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Timer has gone off."
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "Timer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clock"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public TimerAlwaysFires(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 164
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Clock;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Z

    return-void
.end method

.method public TimerAlwaysFires()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Will fire even when application is not showing on the screen if true"
    .end annotation

    .line 152
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Z

    return v0
.end method

.method public TimerEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    return-void
.end method

.method public TimerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Fires timer if true"
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public TimerInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Interval between timer events in ms"
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public TimerInterval(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    return-void
.end method

.method public alarm()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Clock;->Timer()V

    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 620
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 613
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 607
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 602
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Z

    return-void
.end method
