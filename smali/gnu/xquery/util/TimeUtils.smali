.class public Lgnu/xquery/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field static final currentDateTimeLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lgnu/math/DateTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 310
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDateTimeToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 230
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static adjustDateTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 235
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "adjust-dateTime-to-timezone"

    .line 237
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    .line 238
    invoke-static {p0, p1}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 269
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    check-cast p1, Lgnu/math/Duration;

    .line 272
    invoke-virtual {p1}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lgnu/math/Duration;->getSecondsOnly()I

    move-result v0

    if-nez v0, :cond_2

    .line 274
    invoke-virtual {p1}, Lgnu/math/Duration;->getTotalMinutes()J

    move-result-wide v0

    long-to-int p1, v0

    const/16 v0, -0x348

    if-lt p1, v0, :cond_1

    const/16 v0, 0x348

    if-gt p1, v0, :cond_1

    .line 277
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->adjustTimezone(I)Lgnu/math/DateTime;

    move-result-object p0

    return-object p0

    .line 276
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timezone offset out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 273
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timezone offset with fractional minute"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lgnu/math/DateTime;->withZoneUnspecified()Lgnu/math/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static adjustDateToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 243
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/TimeUtils;->adjustDateToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static adjustDateToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 248
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "adjust-date-to-timezone"

    .line 250
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    .line 251
    invoke-static {p0, p1}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static adjustTimeToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 256
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/TimeUtils;->adjustTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static adjustTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 261
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "adjust-time-to-timezone"

    .line 263
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    .line 264
    invoke-static {p0, p1}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static asInteger(I)Lgnu/math/IntNum;
    .locals 0

    .line 59
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method static coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .locals 3

    .line 25
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Lgnu/math/DateTime;

    return-object p1

    .line 27
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:date"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    :goto_0
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xe

    invoke-static {p0, p1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p0

    return-object p0
.end method

.method static coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .locals 3

    .line 15
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    check-cast p1, Lgnu/math/DateTime;

    return-object p1

    .line 17
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:dateTime"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_2
    :goto_0
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x7e

    invoke-static {p0, p1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p0

    return-object p0
.end method

.method static coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;
    .locals 3

    .line 45
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lgnu/math/Duration;

    return-object p1

    .line 47
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:duration"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method static coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .locals 3

    .line 35
    sget-object v0, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lgnu/math/DateTime;

    return-object p1

    .line 37
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:time"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_2
    :goto_0
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x70

    invoke-static {p0, p1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static currentDate()Lgnu/math/DateTime;
    .locals 2

    .line 341
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static currentDateTime()Lgnu/math/DateTime;
    .locals 2

    .line 322
    sget-object v0, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/math/DateTime;

    if-nez v1, :cond_0

    .line 325
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->now()Lgnu/math/DateTime;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static currentTime()Lgnu/math/DateTime;
    .locals 2

    .line 346
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static dateTime(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_8

    .line 287
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_7

    .line 288
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "dateTime"

    .line 289
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    .line 290
    invoke-static {v0, p1}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p1

    .line 291
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    invoke-virtual {p0, v0}, Lgnu/math/DateTime;->toStringDate(Ljava/lang/StringBuffer;)V

    const/16 v1, 0x54

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {p1, v0}, Lgnu/math/DateTime;->toStringTime(Ljava/lang/StringBuffer;)V

    .line 295
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 296
    invoke-virtual {p1}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_2

    if-eqz v2, :cond_6

    .line 299
    :cond_2
    invoke-virtual {p0}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result p0

    .line 300
    invoke-virtual {p1}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result p1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-ne p0, p1, :cond_3

    goto :goto_0

    .line 302
    :cond_3
    new-instance p0, Ljava/lang/Error;

    const-string p1, "dateTime: incompatible timezone in arguments"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move p0, p1

    .line 303
    :goto_1
    invoke-static {p0, v0}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 305
    :cond_6
    sget-object p0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XTimeType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/math/DateTime;

    return-object p0

    :cond_7
    :goto_2
    return-object p1

    :cond_8
    :goto_3
    return-object p0
.end method

.method public static dayFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 128
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "day-from-date"

    .line 129
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getDay()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static dayFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 76
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "day-from-dateTime"

    .line 77
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getDay()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static daysFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 176
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "days-from-duration"

    .line 177
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/Duration;->getDays()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getImplicitTimezone()Lgnu/math/Duration;
    .locals 2

    .line 225
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    invoke-static {v0}, Lgnu/math/Duration;->makeMinutes(I)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method static getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;
    .locals 7

    .line 94
    invoke-virtual {p0}, Lgnu/math/DateTime;->getSecondsOnly()I

    move-result v0

    .line 95
    invoke-virtual {p0}, Lgnu/math/DateTime;->getNanoSecondsOnly()I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    .line 97
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v3, v0

    const-wide/32 v5, 0x3b9aca00

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    .line 99
    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static hoursFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 82
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "hours-from-dateTime"

    .line 83
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getHours()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static hoursFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 182
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "hours-from-duration"

    .line 183
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/Duration;->getHours()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static hoursFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 140
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "hours-from-time"

    .line 141
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getHours()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static implicitTimezone()Ljava/lang/Object;
    .locals 1

    .line 351
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static minutesFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 88
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "minutes-from-dateTime"

    .line 89
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getMinutes()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static minutesFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 188
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "minutes-from-duration"

    .line 189
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/Duration;->getMinutes()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static minutesFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 146
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "minutes-from-time"

    .line 147
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getMinutes()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static monthFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 122
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "month-from-date"

    .line 123
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getMonth()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static monthFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 70
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "month-from-dateTime"

    .line 71
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getMonth()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static monthsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 170
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "months-from-duration"

    .line 171
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/Duration;->getMonths()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static now()Lgnu/math/DateTime;
    .locals 1

    .line 282
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0}, Lgnu/kawa/xml/XTimeType;->now()Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;
    .locals 10

    if-nez p2, :cond_0

    .line 195
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x9

    long-to-int v1, p0

    int-to-long v1, v1

    cmp-long v3, v1, p0

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    int-to-long v2, p2

    goto :goto_1

    :cond_2
    const-wide/32 v2, 0x3b9aca00

    mul-long v2, v2, p0

    int-to-long v4, p2

    add-long/2addr v2, v4

    :goto_1
    const-wide/16 v4, 0xa

    .line 200
    rem-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long p2, v6, v8

    if-nez p2, :cond_3

    .line 202
    div-long/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 205
    :cond_3
    new-instance p2, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    if-eqz v1, :cond_4

    .line 207
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method public static secondsFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 104
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "seconds-from-dateTime"

    .line 105
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static secondsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_2

    .line 213
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "seconds-from-duration"

    .line 214
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lgnu/math/Duration;->getSecondsOnly()I

    move-result v0

    .line 216
    invoke-virtual {p0}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result p0

    if-nez p0, :cond_1

    .line 218
    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, v0

    .line 220
    invoke-static {v0, v1, p0}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static secondsFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 152
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "seconds-from-time"

    .line 153
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result p0

    invoke-static {p0}, Lgnu/math/Duration;->makeMinutes(I)Lgnu/math/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static timezoneFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 134
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "timezone-from-date"

    .line 135
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static timezoneFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 110
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "timezone-from-datetime"

    .line 111
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static timezoneFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 158
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "timezone-from-time"

    .line 159
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static yearFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 116
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "year-from-date"

    .line 117
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getYear()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static yearFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 64
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "year-from-dateTime"

    .line 65
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/DateTime;->getYear()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static yearsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    .line 164
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "years-from-duration"

    .line 165
    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/Duration;->getYears()I

    move-result p0

    invoke-static {p0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method
