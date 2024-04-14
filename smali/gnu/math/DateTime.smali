.class public Lgnu/math/DateTime;
.super Lgnu/math/Quantity;
.source "DateTime.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DATE_MASK:I = 0xe

.field static final DAY_COMPONENT:I = 0x3

.field public static final DAY_MASK:I = 0x8

.field public static GMT:Ljava/util/TimeZone; = null

.field static final HOURS_COMPONENT:I = 0x4

.field public static final HOURS_MASK:I = 0x10

.field static final MINUTES_COMPONENT:I = 0x5

.field public static final MINUTES_MASK:I = 0x20

.field static final MONTH_COMPONENT:I = 0x2

.field public static final MONTH_MASK:I = 0x4

.field static final SECONDS_COMPONENT:I = 0x6

.field public static final SECONDS_MASK:I = 0x40

.field static final TIMEZONE_COMPONENT:I = 0x7

.field public static final TIMEZONE_MASK:I = 0x80

.field public static final TIME_MASK:I = 0x70

.field static final YEAR_COMPONENT:I = 0x1

.field public static final YEAR_MASK:I = 0x2

.field private static final minDate:Ljava/util/Date;


# instance fields
.field calendar:Ljava/util/GregorianCalendar;

.field mask:I

.field nanoSeconds:I

.field unit:Lgnu/math/Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lgnu/math/DateTime;->minDate:Ljava/util/Date;

    const-string v0, "GMT"

    .line 229
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 93
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 20
    sget-object v0, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    iput-object v0, p0, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    .line 94
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    .line 96
    sget-object v1, Lgnu/math/DateTime;->minDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 97
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 98
    iput p1, p0, Lgnu/math/DateTime;->mask:I

    return-void
.end method

.method public constructor <init>(ILjava/util/GregorianCalendar;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 20
    sget-object v0, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    iput-object v0, p0, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    .line 103
    iput-object p2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    .line 104
    iput p1, p0, Lgnu/math/DateTime;->mask:I

    return-void
.end method

.method public static add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;
    .locals 9

    .line 513
    iget-object v0, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v1, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-eq v0, v1, :cond_7

    iget-object v0, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lgnu/math/DateTime;->mask:I

    const/16 v1, 0xe

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 516
    :cond_0
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/math/DateTime;->mask:I

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 517
    iget v1, p1, Lgnu/math/Duration;->months:I

    if-eqz v1, :cond_3

    .line 519
    invoke-virtual {v0}, Lgnu/math/DateTime;->getYear()I

    move-result v1

    const/16 v2, 0xc

    mul-int/lit8 v1, v1, 0xc

    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 520
    iget v3, p1, Lgnu/math/Duration;->months:I

    mul-int v3, v3, p2

    add-int/2addr v1, v3

    .line 521
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v2, :cond_1

    .line 525
    div-int/lit8 v6, v1, 0xc

    .line 526
    rem-int/2addr v1, v2

    .line 527
    iget-object v2, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 528
    invoke-static {v1, v6}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v2

    goto :goto_0

    :cond_1
    rsub-int/lit8 v1, v1, 0xb

    .line 533
    iget-object v6, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v6, v5, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 534
    div-int/lit8 v5, v1, 0xc

    add-int/lit8 v6, v5, 0x1

    .line 535
    rem-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0xb

    .line 536
    invoke-static {v1, v4}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v2

    :goto_0
    if-le v3, v2, :cond_2

    move v3, v2

    .line 541
    :cond_2
    iget-object v2, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v6, v1, v3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 543
    :cond_3
    iget v1, p0, Lgnu/math/DateTime;->nanoSeconds:I

    int-to-long v1, v1

    int-to-long v3, p2

    iget-wide v5, p1, Lgnu/math/Duration;->seconds:J

    const-wide/32 v7, 0x3b9aca00

    mul-long v5, v5, v7

    iget p1, p1, Lgnu/math/Duration;->nanos:I

    int-to-long p1, p1

    add-long/2addr v5, p1

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    const-wide/16 p1, 0x0

    cmp-long v3, v1, p1

    if-eqz v3, :cond_6

    .line 546
    iget p0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 p0, p0, 0x70

    if-nez p0, :cond_5

    const-wide v3, 0x4e94914f0000L

    .line 549
    rem-long v5, v1, v3

    cmp-long p0, v5, p1

    if-gez p0, :cond_4

    add-long/2addr v5, v3

    :cond_4
    sub-long/2addr v1, v5

    .line 554
    :cond_5
    iget-object p0, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide p0

    .line 555
    div-long v3, v1, v7

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr p0, v3

    .line 556
    iget-object p2, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 557
    rem-long/2addr v1, v7

    long-to-int p0, v1

    iput p0, v0, Lgnu/math/DateTime;->nanoSeconds:I

    :cond_6
    return-object v0

    .line 515
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid date/time +/- duration combinatuion"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addMinutes(Lgnu/math/DateTime;I)Lgnu/math/DateTime;
    .locals 0

    mul-int/lit8 p1, p1, 0x3c

    .line 564
    invoke-static {p0, p1}, Lgnu/math/DateTime;->addSeconds(Lgnu/math/DateTime;I)Lgnu/math/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static addSeconds(Lgnu/math/DateTime;I)Lgnu/math/DateTime;
    .locals 7

    .line 569
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/math/DateTime;->mask:I

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    int-to-long v1, p1

    const-wide/32 v3, 0x3b9aca00

    mul-long v1, v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    .line 573
    iget p1, p0, Lgnu/math/DateTime;->nanoSeconds:I

    int-to-long v3, p1

    add-long/2addr v3, v1

    .line 574
    iget-object p0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide p0

    const-wide/32 v1, 0xf4240

    .line 575
    div-long v5, v3, v1

    add-long/2addr p0, v5

    .line 576
    iget-object v5, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 577
    rem-long/2addr v3, v1

    long-to-int p0, v3

    iput p0, v0, Lgnu/math/DateTime;->nanoSeconds:I

    :cond_0
    return-object v0
.end method

.method private static append(ILjava/lang/StringBuffer;I)V
    .locals 1

    .line 600
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 601
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/2addr p2, v0

    .line 602
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p2, p0

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    const/16 p0, 0x30

    .line 604
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I
    .locals 9

    .line 429
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 430
    iget-object v2, p1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 431
    iget v4, p0, Lgnu/math/DateTime;->mask:I

    iget v5, p1, Lgnu/math/DateTime;->mask:I

    or-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xe

    if-nez v4, :cond_1

    const-wide/32 v4, 0x5265c00

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gez v8, :cond_0

    add-long/2addr v0, v4

    :cond_0
    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    add-long/2addr v2, v4

    .line 436
    :cond_1
    iget p0, p0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 437
    iget p1, p1, Lgnu/math/DateTime;->nanoSeconds:I

    const v4, 0xf4240

    .line 438
    div-int v5, p0, v4

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 439
    div-int v5, p1, v4

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 440
    rem-int/2addr p0, v4

    .line 441
    rem-int/2addr p1, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    :goto_0
    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    if-ge p0, p1, :cond_4

    goto :goto_0

    :cond_4
    if-le p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public static daysInMonth(II)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_0

    const/16 p0, 0x1f

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    .line 223
    :cond_1
    invoke-static {p1}, Lgnu/math/DateTime;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1d

    goto :goto_0

    :cond_2
    const/16 p0, 0x1c

    :goto_0
    return p0
.end method

.method public static isLeapYear(I)Z
    .locals 1

    .line 210
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static minutesToTimeZone(I)Ljava/util/TimeZone;
    .locals 2

    if-nez p0, :cond_0

    .line 664
    sget-object p0, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    return-object p0

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-static {p0, v0}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;I)Lgnu/math/DateTime;
    .locals 6

    .line 109
    new-instance v0, Lgnu/math/DateTime;

    invoke-direct {v0, p1}, Lgnu/math/DateTime;-><init>(I)V

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    and-int/lit8 v2, p1, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v5, p1, 0x70

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {v0, p0, v4, p1}, Lgnu/math/DateTime;->parseDate(Ljava/lang/String;II)I

    move-result v4

    if-eqz v3, :cond_4

    if-ltz v4, :cond_3

    if-ge v4, v1, :cond_3

    .line 120
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x54

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, -0x1

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 127
    invoke-virtual {v0, p0, v4}, Lgnu/math/DateTime;->parseTime(Ljava/lang/String;I)I

    move-result v4

    .line 128
    :cond_5
    invoke-virtual {v0, p0, v4}, Lgnu/math/DateTime;->parseZone(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_6

    return-object v0

    .line 130
    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized date/time \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseDigits(Ljava/lang/String;I)I
    .locals 4

    .line 361
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    if-ge p1, v0, :cond_3

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    .line 365
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v3, 0x4e20

    if-le v1, v3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-gez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-gez v1, :cond_4

    goto :goto_3

    :cond_4
    shl-int/lit8 p0, v1, 0x10

    or-int/2addr p1, p0

    :goto_3
    return p1
.end method

.method public static sub(Lgnu/math/DateTime;Lgnu/math/DateTime;)Lgnu/math/Duration;
    .locals 7

    .line 455
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 456
    iget-object v2, p1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 457
    iget p0, p0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 458
    iget p1, p1, Lgnu/math/DateTime;->nanoSeconds:I

    const v4, 0xf4240

    .line 459
    div-int v5, p0, v4

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 460
    div-int v5, p1, v4

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 461
    rem-int/2addr p0, v4

    .line 462
    rem-int/2addr p1, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 464
    div-long v4, v0, v2

    .line 465
    rem-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    int-to-long p0, p1

    add-long/2addr v0, p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    const p1, 0x3b9aca00

    .line 466
    div-int v0, p0, p1

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 467
    rem-int/2addr p0, p1

    .line 468
    sget-object p1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    const/4 v0, 0x0

    invoke-static {v0, v4, v5, p0, p1}, Lgnu/math/Duration;->make(IJILgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static toStringZone(ILjava/lang/StringBuffer;)V
    .locals 2

    if-nez p0, :cond_0

    const/16 p0, 0x5a

    .line 684
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-gez p0, :cond_1

    const/16 v0, 0x2d

    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int p0, p0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2b

    .line 693
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 694
    :goto_0
    div-int/lit8 v0, p0, 0x3c

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    const/16 v0, 0x3a

    .line 695
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 696
    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1

    .line 584
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 585
    check-cast p1, Lgnu/math/Duration;

    invoke-static {p0, p1, p2}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object p1

    return-object p1

    .line 586
    :cond_0
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 587
    check-cast p1, Lgnu/math/DateTime;

    invoke-static {p0, p1}, Lgnu/math/DateTime;->sub(Lgnu/math/DateTime;Lgnu/math/DateTime;)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 588
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 1

    .line 593
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 594
    check-cast p1, Lgnu/math/Duration;

    invoke-static {p0, p1, p2}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object p1

    return-object p1

    .line 595
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public adjustTimezone(I)Lgnu/math/DateTime;
    .locals 3

    .line 483
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/math/DateTime;->mask:I

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    if-nez p1, :cond_0

    .line 486
    sget-object p1, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    goto :goto_0

    .line 489
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "GMT"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 490
    invoke-static {p1, v1}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 493
    :goto_0
    iget-object v1, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 494
    iget p1, v0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_1

    .line 496
    iget-object p1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    .line 497
    iget-object p1, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p1, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 498
    iget p1, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 p1, p1, 0x70

    if-nez p1, :cond_2

    .line 500
    iget-object p1, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 501
    iget-object p1, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 502
    iget-object p1, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 503
    iput v2, v0, Lgnu/math/DateTime;->nanoSeconds:I

    goto :goto_1

    :cond_1
    or-int/lit16 p1, p1, 0x80

    .line 507
    iput p1, v0, Lgnu/math/DateTime;->mask:I

    :cond_2
    :goto_1
    return-object v0
.end method

.method public cast(I)Lgnu/math/DateTime;
    .locals 3

    .line 55
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v0, v0, -0x81

    if-ne p1, v0, :cond_0

    return-object p0

    .line 58
    :cond_0
    new-instance v1, Lgnu/math/DateTime;

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    not-int v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    const/16 v2, 0x7e

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "cannot cast DateTime - missing conponents"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    iget v2, v1, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Lgnu/math/DateTime;->mask:I

    goto :goto_1

    .line 68
    :cond_3
    iget v2, v1, Lgnu/math/DateTime;->mask:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lgnu/math/DateTime;->mask:I

    :goto_1
    not-int p1, p1

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x70

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 73
    iget-object v0, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 74
    iget-object v0, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->clear(I)V

    goto :goto_2

    .line 77
    :cond_4
    iget v0, p0, Lgnu/math/DateTime;->nanoSeconds:I

    iput v0, v1, Lgnu/math/DateTime;->nanoSeconds:I

    :goto_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    .line 80
    iget-object v0, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 81
    iget-object v0, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->clear(I)V

    :cond_5
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->clear(I)V

    :cond_6
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_7

    .line 86
    iget-object p1, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    :cond_7
    return-object v1
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1

    .line 448
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_0

    .line 449
    check-cast p1, Lgnu/math/DateTime;

    invoke-static {p0, p1}, Lgnu/math/DateTime;->compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I

    move-result p1

    return p1

    .line 450
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result p1

    return p1
.end method

.method public components()I
    .locals 1

    .line 51
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v0, v0, -0x81

    return v0
.end method

.method public getDay()I
    .locals 2

    .line 391
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getHours()I
    .locals 2

    .line 396
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 2

    .line 401
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 386
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNanoSecondsOnly()I
    .locals 1

    .line 416
    iget v0, p0, Lgnu/math/DateTime;->nanoSeconds:I

    return v0
.end method

.method public getSecondsOnly()I
    .locals 2

    .line 406
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getWholeSeconds()I
    .locals 2

    .line 411
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 3

    .line 378
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 379
    iget-object v1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    rsub-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getZoneMinutes()I
    .locals 2

    .line 655
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    return v0
.end method

.method public isExact()Z
    .locals 1

    .line 725
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 v0, v0, 0x70

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 2

    .line 730
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DateTime.isZero not meaningful!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isZoneUnspecified()Z
    .locals 1

    .line 650
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/Error;

    const-string v1, "number needs to be implemented!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parseDate(Ljava/lang/String;II)I
    .locals 12

    if-gez p2, :cond_0

    return p2

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, v0, :cond_1

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v5, p3, 0x2

    const v6, 0xffff

    const/4 v7, -0x1

    if-nez v5, :cond_3

    if-nez v4, :cond_2

    return v7

    :cond_2
    const/4 v9, -0x1

    goto :goto_3

    .line 155
    :cond_3
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v8

    shr-int/lit8 v9, v8, 0x10

    and-int/2addr v8, v6

    add-int/lit8 v10, p2, 0x4

    if-eq v8, v10, :cond_5

    if-le v8, v10, :cond_4

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v10, 0x30

    if-ne p2, v10, :cond_5

    :cond_4
    return v7

    :cond_5
    if-nez v4, :cond_7

    if-nez v9, :cond_6

    goto :goto_1

    .line 166
    :cond_6
    iget-object p2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p2, v3, v9}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_2

    .line 162
    :cond_7
    :goto_1
    iget-object p2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p2, v2, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 163
    iget-object p2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {p2, v3, v2}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_2
    move p2, v8

    :goto_3
    and-int/lit8 v2, p3, 0xc

    if-nez v2, :cond_8

    return p2

    :cond_8
    if-ge p2, v0, :cond_11

    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_9

    goto :goto_8

    :cond_9
    add-int/2addr p2, v3

    and-int/lit8 v2, p3, 0x4

    const/4 v4, 0x2

    if-eqz v2, :cond_d

    .line 175
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v8

    shr-int/lit8 v10, v8, 0x10

    and-int/2addr v8, v6

    if-lez v10, :cond_c

    const/16 v11, 0xc

    if-gt v10, v11, :cond_c

    add-int/lit8 p2, p2, 0x2

    if-eq v8, p2, :cond_a

    goto :goto_4

    .line 180
    :cond_a
    iget-object p2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    add-int/lit8 v11, v10, -0x1

    invoke-virtual {p2, v4, v11}, Ljava/util/GregorianCalendar;->set(II)V

    and-int/lit8 p2, p3, 0x8

    if-nez p2, :cond_b

    return v8

    :cond_b
    move p2, v8

    goto :goto_5

    :cond_c
    :goto_4
    return v7

    :cond_d
    const/4 v10, -0x1

    :goto_5
    if-ge p2, v0, :cond_11

    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-eq p3, v1, :cond_e

    goto :goto_8

    :cond_e
    add-int/2addr p2, v3

    .line 189
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result p1

    shr-int/lit8 p3, p1, 0x10

    and-int/2addr p1, v6

    if-lez p3, :cond_11

    add-int/2addr p2, v4

    if-ne p1, p2, :cond_11

    if-nez v2, :cond_f

    const/16 p2, 0x1f

    goto :goto_7

    :cond_f
    sub-int/2addr v10, v3

    if-eqz v5, :cond_10

    goto :goto_6

    :cond_10
    const/16 v9, 0x7d0

    .line 198
    :goto_6
    invoke-static {v10, v9}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result p2

    :goto_7
    if-gt p3, p2, :cond_11

    .line 201
    iget-object p2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p3}, Ljava/util/GregorianCalendar;->set(II)V

    return p1

    :cond_11
    :goto_8
    return v7
.end method

.method parseTime(Ljava/lang/String;I)I
    .locals 11

    if-gez p2, :cond_0

    return p2

    .line 301
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 303
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v1

    shr-int/lit8 v2, v1, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/4 v4, -0x1

    const/16 v5, 0x18

    if-gt v2, v5, :cond_9

    add-int/lit8 p2, p2, 0x2

    if-ne v1, p2, :cond_9

    if-eq v1, v0, :cond_9

    .line 306
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v6, 0x3a

    if-ne p2, v6, :cond_9

    add-int/lit8 v1, v1, 0x1

    .line 309
    invoke-static {p1, v1}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result p2

    shr-int/lit8 v7, p2, 0x10

    and-int/2addr p2, v3

    const/16 v8, 0x3c

    if-ge v7, v8, :cond_9

    add-int/lit8 v1, v1, 0x2

    if-ne p2, v1, :cond_9

    if-eq p2, v0, :cond_9

    .line 312
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_9

    add-int/lit8 p2, p2, 0x1

    .line 316
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v1

    shr-int/lit8 v6, v1, 0x10

    and-int/2addr v1, v3

    if-ge v6, v8, :cond_9

    add-int/lit8 p2, p2, 0x2

    if-ne v1, p2, :cond_9

    add-int/lit8 p2, v1, 0x1

    if-ge p2, v0, :cond_6

    .line 322
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x2e

    if-ne v3, v8, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0xa

    invoke-static {v3, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_6

    const/4 v1, 0x0

    move v1, p2

    const/4 p2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v9, 0x9

    if-ge v1, v0, :cond_4

    .line 331
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-gez v10, :cond_1

    goto :goto_2

    :cond_1
    if-ge p2, v9, :cond_2

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v10

    goto :goto_1

    :cond_2
    if-ne p2, v9, :cond_3

    const/4 v9, 0x5

    if-lt v10, v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    :goto_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-int/lit8 p1, p2, 0x1

    if-ge p2, v9, :cond_5

    mul-int/lit8 v3, v3, 0xa

    move p2, p1

    goto :goto_2

    .line 341
    :cond_5
    iput v3, p0, Lgnu/math/DateTime;->nanoSeconds:I

    :cond_6
    if-ne v2, v5, :cond_8

    if-nez v7, :cond_7

    if-nez v6, :cond_7

    .line 343
    iget p1, p0, Lgnu/math/DateTime;->nanoSeconds:I

    if-eqz p1, :cond_8

    :cond_7
    return v4

    .line 346
    :cond_8
    iget-object p1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 347
    iget-object p1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 348
    iget-object p1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v6}, Ljava/util/GregorianCalendar;->set(II)V

    return v1

    :cond_9
    return v4
.end method

.method parseZone(Ljava/lang/String;I)I
    .locals 3

    if-gez p2, :cond_0

    return p2

    .line 235
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/math/DateTime;->parseZoneMinutes(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ne v0, p2, :cond_2

    return p2

    :cond_2
    shr-int/lit8 v1, v0, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    if-nez v1, :cond_3

    .line 244
    sget-object p1, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    goto :goto_0

    .line 246
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 247
    :goto_0
    iget-object p2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p2, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 248
    iget p1, p0, Lgnu/math/DateTime;->mask:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lgnu/math/DateTime;->mask:I

    return v0
.end method

.method parseZoneMinutes(Ljava/lang/String;I)I
    .locals 9

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p2, v0, :cond_c

    if-gez p2, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_1
    const/16 v2, 0x2b

    const/16 v3, 0x2d

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 265
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v2

    shr-int/lit8 v4, v2, 0x10

    const/16 v5, 0xe

    const/4 v6, 0x0

    if-le v4, v5, :cond_3

    return v6

    :cond_3
    mul-int/lit8 v7, v4, 0x3c

    const v8, 0xffff

    and-int/2addr v2, v8

    add-int/lit8 p2, p2, 0x2

    if-eq v2, p2, :cond_4

    return v6

    :cond_4
    if-ge v2, v0, :cond_b

    .line 275
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x3a

    if-ne p2, v0, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 278
    invoke-static {p1, v2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result p1

    and-int p2, p1, v8

    shr-int/lit8 p1, p1, 0x10

    if-lez p1, :cond_6

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_5

    if-ne v4, v5, :cond_6

    :cond_5
    return v6

    :cond_6
    add-int/2addr v7, p1

    add-int/lit8 v2, v2, 0x2

    if-eq p2, v2, :cond_7

    return v6

    :cond_7
    move v2, p2

    :cond_8
    const/16 p1, 0x348

    if-le v7, p1, :cond_9

    return v6

    :cond_9
    if-ne v1, v3, :cond_a

    neg-int v7, v7

    :cond_a
    shl-int/lit8 p1, v7, 0x10

    or-int/2addr p1, v2

    return p1

    :cond_b
    return v6

    :cond_c
    :goto_0
    return p2
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    .line 672
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 718
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 719
    invoke-virtual {p0, v0}, Lgnu/math/DateTime;->toString(Ljava/lang/StringBuffer;)V

    .line 720
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 4

    .line 702
    invoke-virtual {p0}, Lgnu/math/DateTime;->components()I

    move-result v0

    and-int/lit8 v1, v0, 0xe

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 707
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->toStringDate(Ljava/lang/StringBuffer;)V

    if-eqz v2, :cond_2

    const/16 v0, 0x54

    .line 709
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz v2, :cond_3

    .line 712
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->toStringTime(Ljava/lang/StringBuffer;)V

    .line 713
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->toStringZone(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public toStringDate(Ljava/lang/StringBuffer;)V
    .locals 5

    .line 609
    invoke-virtual {p0}, Lgnu/math/DateTime;->components()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    const/16 v2, 0x2d

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 613
    iget-object v3, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v3, 0x4

    .line 619
    invoke-static {v1, p1, v3}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    goto :goto_0

    .line 622
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    and-int/lit8 v1, v0, 0xc

    if-eqz v1, :cond_3

    .line 625
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 627
    invoke-virtual {p0}, Lgnu/math/DateTime;->getMonth()I

    move-result v1

    invoke-static {v1, p1, v3}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 630
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 631
    invoke-virtual {p0}, Lgnu/math/DateTime;->getDay()I

    move-result v0

    invoke-static {v0, p1, v3}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    :cond_3
    return-void
.end method

.method public toStringTime(Ljava/lang/StringBuffer;)V
    .locals 3

    .line 638
    invoke-virtual {p0}, Lgnu/math/DateTime;->getHours()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    const/16 v0, 0x3a

    .line 639
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 640
    invoke-virtual {p0}, Lgnu/math/DateTime;->getMinutes()I

    move-result v2

    invoke-static {v2, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 641
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 642
    invoke-virtual {p0}, Lgnu/math/DateTime;->getWholeSeconds()I

    move-result v0

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 643
    iget v0, p0, Lgnu/math/DateTime;->nanoSeconds:I

    invoke-static {v0, p1}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    return-void
.end method

.method public toStringZone(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 677
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 679
    :cond_0
    invoke-virtual {p0}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v0

    invoke-static {v0, p1}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    return-void
.end method

.method public unit()Lgnu/math/Unit;
    .locals 1

    .line 733
    iget-object v0, p0, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    return-object v0
.end method

.method public withZoneUnspecified()Lgnu/math/DateTime;
    .locals 3

    .line 473
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 475
    :cond_0
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/math/DateTime;->mask:I

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 476
    iget-object v1, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 477
    iget v1, v0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Lgnu/math/DateTime;->mask:I

    return-object v0
.end method
