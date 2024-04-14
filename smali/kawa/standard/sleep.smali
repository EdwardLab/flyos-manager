.class public Lkawa/standard/sleep;
.super Ljava/lang/Object;
.source "sleep.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sleep(Lgnu/math/Quantity;)V
    .locals 8

    .line 11
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    .line 14
    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lgnu/math/Unit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    sget-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-virtual {v1}, Lgnu/math/NamedUnit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lkawa/lang/GenericError;

    const-string v0, "bad unit for sleep"

    invoke-direct {p0, v0}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/math/Quantity;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v0

    double-to-long v2, v2

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    mul-double v0, v0, v4

    long-to-double v4, v2

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v6

    sub-double/2addr v0, v4

    double-to-int p0, v0

    .line 23
    :try_start_0
    invoke-static {v2, v3, p0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 27
    :catch_0
    new-instance p0, Lkawa/lang/GenericError;

    const-string v0, "sleep was interrupted"

    invoke-direct {p0, v0}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
