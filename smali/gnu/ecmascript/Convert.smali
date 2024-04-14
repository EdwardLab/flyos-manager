.class public Lgnu/ecmascript/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toInteger(D)D
    .locals 3

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    cmpg-double v0, p0, v1

    if-gez v0, :cond_1

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static toInteger(Ljava/lang/Object;)D
    .locals 2

    .line 38
    invoke-static {p0}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/ecmascript/Convert;->toInteger(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toNumber(Ljava/lang/Object;)D
    .locals 3

    .line 7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 11
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 12
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 13
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_3

    .line 18
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_3
    return-wide v1
.end method


# virtual methods
.method public toInt32(D)I
    .locals 1

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    double-to-int p1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toInt32(Ljava/lang/Object;)I
    .locals 2

    .line 51
    invoke-static {p1}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lgnu/ecmascript/Convert;->toInt32(D)I

    move-result p1

    return p1
.end method
