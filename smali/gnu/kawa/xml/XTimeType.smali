.class public Lgnu/kawa/xml/XTimeType;
.super Lgnu/kawa/xml/XDataType;
.source "XTimeType.java"


# static fields
.field public static final dateTimeType:Lgnu/kawa/xml/XTimeType;

.field public static final dateType:Lgnu/kawa/xml/XTimeType;

.field private static fixedTimeZone:Ljava/util/TimeZone;

.field public static final gDayType:Lgnu/kawa/xml/XTimeType;

.field public static final gMonthDayType:Lgnu/kawa/xml/XTimeType;

.field public static final gMonthType:Lgnu/kawa/xml/XTimeType;

.field public static final gYearMonthType:Lgnu/kawa/xml/XTimeType;

.field public static final gYearType:Lgnu/kawa/xml/XTimeType;

.field public static final timeType:Lgnu/kawa/xml/XTimeType;

.field static typeDateTime:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gnu.math.DateTime"

    .line 13
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XTimeType;->typeDateTime:Lgnu/bytecode/ClassType;

    .line 15
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "dateTime"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    .line 18
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "date"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    .line 20
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "time"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    .line 22
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gYearMonth"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gYearMonthType:Lgnu/kawa/xml/XTimeType;

    .line 24
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gYear"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gYearType:Lgnu/kawa/xml/XTimeType;

    .line 26
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gMonth"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gMonthType:Lgnu/kawa/xml/XTimeType;

    .line 28
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gMonthDay"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gMonthDayType:Lgnu/kawa/xml/XTimeType;

    .line 30
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gDay"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gDayType:Lgnu/kawa/xml/XTimeType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 35
    sget-object v0, Lgnu/kawa/xml/XTimeType;->typeDateTime:Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, v0, p2}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    return-void
.end method

.method static components(I)I
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0x7e

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x78

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    const/16 p0, 0xc

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    return v0

    :pswitch_8
    const/16 p0, 0x70

    return p0

    :pswitch_9
    const/16 p0, 0xe

    return p0

    :pswitch_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized fixedTimeZone()Ljava/util/TimeZone;
    .locals 3

    const-class v0, Lgnu/kawa/xml/XTimeType;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lgnu/kawa/xml/XTimeType;->fixedTimeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_0

    .line 89
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0xea60

    div-int/2addr v1, v2

    .line 90
    invoke-static {v1}, Lgnu/math/DateTime;->minutesToTimeZone(I)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/XTimeType;->fixedTimeZone:Ljava/util/TimeZone;

    .line 92
    :cond_0
    sget-object v1, Lgnu/kawa/xml/XTimeType;->fixedTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lgnu/math/DateTime;->parse(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-static {}, Lgnu/kawa/xml/XTimeType;->fixedTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public isInstance(Ljava/lang/Object;)Z
    .locals 2

    .line 116
    instance-of v0, p1, Lgnu/math/DateTime;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    iget v0, p0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v0}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v0

    .line 119
    check-cast p1, Lgnu/math/DateTime;

    invoke-virtual {p1}, Lgnu/math/DateTime;->components()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public now()Lgnu/math/DateTime;
    .locals 3

    .line 79
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v1}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-static {}, Lgnu/kawa/xml/XTimeType;->fixedTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 111
    iget v0, p0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v0}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v0

    invoke-static {p1, v0}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p1

    return-object p1
.end method
