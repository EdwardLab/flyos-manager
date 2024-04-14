.class public abstract Lgnu/math/Unit;
.super Lgnu/math/Quantity;
.source "Unit.java"


# static fields
.field public static Empty:Lgnu/math/BaseUnit;

.field public static NON_COMBINABLE:D

.field public static final cm:Lgnu/math/Unit;

.field public static final date:Lgnu/math/NamedUnit;

.field public static final duration:Lgnu/math/BaseUnit;

.field public static final gram:Lgnu/math/BaseUnit;

.field public static final hour:Lgnu/math/Unit;

.field public static final in:Lgnu/math/Unit;

.field public static final meter:Lgnu/math/BaseUnit;

.field public static final minute:Lgnu/math/Unit;

.field public static final mm:Lgnu/math/Unit;

.field public static final month:Lgnu/math/NamedUnit;

.field public static final pica:Lgnu/math/Unit;

.field public static final pt:Lgnu/math/Unit;

.field public static final radian:Lgnu/math/Unit;

.field public static final second:Lgnu/math/NamedUnit;

.field static table:[Lgnu/math/NamedUnit;


# instance fields
.field base:Lgnu/math/Unit;

.field dims:Lgnu/math/Dimensions;

.field factor:D

.field products:Lgnu/math/MulUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x64

    new-array v0, v0, [Lgnu/math/NamedUnit;

    .line 22
    sput-object v0, Lgnu/math/Unit;->table:[Lgnu/math/NamedUnit;

    .line 146
    new-instance v0, Lgnu/math/BaseUnit;

    invoke-direct {v0}, Lgnu/math/BaseUnit;-><init>()V

    sput-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    .line 147
    sget-object v0, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    iget-object v0, v0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x0

    .line 203
    sput-wide v0, Lgnu/math/Unit;->NON_COMBINABLE:D

    .line 205
    new-instance v0, Lgnu/math/BaseUnit;

    const-string v1, "m"

    const-string v2, "Length"

    invoke-direct {v0, v1, v2}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lgnu/math/Unit;->meter:Lgnu/math/BaseUnit;

    .line 206
    new-instance v1, Lgnu/math/BaseUnit;

    const-string v2, "duration"

    const-string v3, "Time"

    invoke-direct {v1, v2, v3}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    .line 207
    new-instance v2, Lgnu/math/BaseUnit;

    const-string v3, "g"

    const-string v4, "Mass"

    invoke-direct {v2, v3, v4}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lgnu/math/Unit;->gram:Lgnu/math/BaseUnit;

    const-string v2, "cm"

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    .line 208
    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    sput-object v2, Lgnu/math/Unit;->cm:Lgnu/math/Unit;

    const-string v3, "mm"

    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 209
    invoke-static {v3, v4, v5, v2}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    sput-object v2, Lgnu/math/Unit;->mm:Lgnu/math/Unit;

    const-string v2, "in"

    const-wide v3, 0x3f9a027525460aa6L    # 0.0254

    .line 210
    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    sput-object v2, Lgnu/math/Unit;->in:Lgnu/math/Unit;

    const-string v2, "pt"

    const-wide v3, 0x3f371ea11d1f0955L    # 3.527778E-4

    .line 211
    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    sput-object v2, Lgnu/math/Unit;->pt:Lgnu/math/Unit;

    const-string v2, "pica"

    const-wide v3, 0x3f7156f8ac9bf739L    # 0.004233333

    .line 212
    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    sput-object v0, Lgnu/math/Unit;->pica:Lgnu/math/Unit;

    .line 213
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const-string v2, "rad"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    sput-object v0, Lgnu/math/Unit;->radian:Lgnu/math/Unit;

    .line 215
    new-instance v0, Lgnu/math/NamedUnit;

    sget-wide v2, Lgnu/math/Unit;->NON_COMBINABLE:D

    const-string v4, "date"

    invoke-direct {v0, v4, v2, v3, v1}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    sput-object v0, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    .line 217
    new-instance v0, Lgnu/math/NamedUnit;

    sget-wide v2, Lgnu/math/Unit;->NON_COMBINABLE:D

    const-string v4, "s"

    invoke-direct {v0, v4, v2, v3, v1}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    sput-object v0, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    .line 219
    new-instance v2, Lgnu/math/NamedUnit;

    sget-wide v3, Lgnu/math/Unit;->NON_COMBINABLE:D

    const-string v5, "month"

    invoke-direct {v2, v5, v3, v4, v1}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    sput-object v2, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    const-string v1, "min"

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    .line 221
    invoke-static {v1, v2, v3, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    sput-object v0, Lgnu/math/Unit;->minute:Lgnu/math/Unit;

    const-string v1, "hour"

    .line 222
    invoke-static {v1, v2, v3, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    sput-object v0, Lgnu/math/Unit;->hour:Lgnu/math/Unit;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 110
    iput-wide v0, p0, Lgnu/math/Unit;->factor:D

    return-void
.end method

.method public static define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;
    .locals 1

    .line 125
    new-instance v0, Lgnu/math/NamedUnit;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    return-object v0
.end method

.method public static define(Ljava/lang/String;Lgnu/math/DQuantity;)Lgnu/math/Unit;
    .locals 1

    .line 120
    new-instance v0, Lgnu/math/NamedUnit;

    invoke-direct {v0, p0, p1}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;Lgnu/math/DQuantity;)V

    return-object v0
.end method

.method public static divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 100
    invoke-static {p0, v0, p1, v1}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;
    .locals 0

    .line 151
    invoke-static {p0}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;
    .locals 0

    .line 115
    invoke-static {p0, p1}, Lgnu/math/NamedUnit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object p0

    return-object p0
.end method

.method public static pow(Lgnu/math/Unit;I)Lgnu/math/Unit;
    .locals 2

    .line 105
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p0

    return-object p0
.end method

.method static times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p2, :cond_0

    add-int/2addr p1, p3

    .line 38
    sget-object p2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const/4 p3, 0x0

    :cond_0
    if-eqz p1, :cond_2

    .line 41
    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p3

    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    sget-object p0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    move p1, p3

    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :goto_1
    if-eqz v0, :cond_3

    .line 48
    sget-object p3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p2, p3, :cond_5

    :cond_3
    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    return-object p0

    :cond_4
    if-nez p1, :cond_5

    .line 53
    sget-object p0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    return-object p0

    .line 55
    :cond_5
    instance-of p3, p0, Lgnu/math/MulUnit;

    if-eqz p3, :cond_9

    .line 57
    move-object p3, p0

    check-cast p3, Lgnu/math/MulUnit;

    .line 58
    iget-object v1, p3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v1, p2, :cond_6

    .line 59
    iget p0, p3, Lgnu/math/MulUnit;->power1:I

    mul-int p0, p0, p1

    add-int/2addr p0, v0

    iget-object v0, p3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget p3, p3, Lgnu/math/MulUnit;->power2:I

    mul-int p3, p3, p1

    invoke-static {p2, p0, v0, p3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p0

    return-object p0

    .line 61
    :cond_6
    iget-object v1, p3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v1, p2, :cond_7

    .line 62
    iget-object p0, p3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget v1, p3, Lgnu/math/MulUnit;->power1:I

    mul-int v1, v1, p1

    iget p3, p3, Lgnu/math/MulUnit;->power2:I

    mul-int p3, p3, p1

    add-int/2addr p3, v0

    invoke-static {p0, v1, p2, p3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p0

    return-object p0

    .line 64
    :cond_7
    instance-of v1, p2, Lgnu/math/MulUnit;

    if-eqz v1, :cond_9

    .line 66
    move-object v1, p2

    check-cast v1, Lgnu/math/MulUnit;

    .line 67
    iget-object v2, p3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget-object v3, v1, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v2, v3, :cond_8

    iget-object v2, p3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget-object v3, v1, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v2, v3, :cond_8

    .line 68
    iget-object p0, p3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget p2, p3, Lgnu/math/MulUnit;->power1:I

    mul-int p2, p2, p1

    iget v2, v1, Lgnu/math/MulUnit;->power1:I

    mul-int v2, v2, v0

    add-int/2addr p2, v2

    iget-object v2, p3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget p3, p3, Lgnu/math/MulUnit;->power2:I

    mul-int p3, p3, p1

    iget p1, v1, Lgnu/math/MulUnit;->power2:I

    mul-int p1, p1, v0

    add-int/2addr p3, p1

    invoke-static {p0, p2, v2, p3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p0

    return-object p0

    .line 72
    :cond_8
    iget-object v2, p3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget-object v3, v1, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v2, v3, :cond_9

    iget-object v2, p3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget-object v3, v1, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v2, v3, :cond_9

    .line 73
    iget-object p0, p3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget p2, p3, Lgnu/math/MulUnit;->power1:I

    mul-int p2, p2, p1

    iget v2, v1, Lgnu/math/MulUnit;->power2:I

    mul-int v2, v2, v0

    add-int/2addr p2, v2

    iget-object v2, p3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget p3, p3, Lgnu/math/MulUnit;->power2:I

    mul-int p3, p3, p1

    iget p1, v1, Lgnu/math/MulUnit;->power1:I

    mul-int p1, p1, v0

    add-int/2addr p3, p1

    invoke-static {p0, p2, v2, p3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p0

    return-object p0

    .line 79
    :cond_9
    instance-of p3, p2, Lgnu/math/MulUnit;

    if-eqz p3, :cond_b

    .line 81
    move-object p3, p2

    check-cast p3, Lgnu/math/MulUnit;

    .line 82
    iget-object v1, p3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v1, p0, :cond_a

    .line 83
    iget p2, p3, Lgnu/math/MulUnit;->power1:I

    mul-int p2, p2, v0

    add-int/2addr p1, p2

    iget-object p2, p3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget p3, p3, Lgnu/math/MulUnit;->power2:I

    mul-int p3, p3, v0

    invoke-static {p0, p1, p2, p3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p0

    return-object p0

    .line 85
    :cond_a
    iget-object v1, p3, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v1, p0, :cond_b

    .line 86
    iget-object p2, p3, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget v1, p3, Lgnu/math/MulUnit;->power1:I

    mul-int v1, v1, v0

    iget p3, p3, Lgnu/math/MulUnit;->power2:I

    mul-int p3, p3, v0

    add-int/2addr p1, p3

    :try_start_0
    invoke-static {p2, v1, p0, p1}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 90
    :cond_b
    invoke-static {p0, p1, p2, v0}, Lgnu/math/MulUnit;->make(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 86
    throw p0
.end method

.method public static times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-static {p0, v0, p1, v0}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dimensions()Lgnu/math/Dimensions;
    .locals 1

    .line 24
    iget-object v0, p0, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    return-object v0
.end method

.method public final doubleValue()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lgnu/math/Unit;->factor:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 28
    iget-object v0, p0, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    invoke-virtual {v0}, Lgnu/math/Dimensions;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExact()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isZero()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 1

    .line 128
    invoke-static {}, Lgnu/math/DFloNum;->one()Lgnu/math/DFloNum;

    move-result-object v0

    return-object v0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 1

    .line 134
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 136
    iget p1, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, p1}, Lgnu/math/Unit;->pow(Lgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Unit raised to bignum power"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sqrt()Lgnu/math/Unit;
    .locals 2

    .line 141
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p0, v0, :cond_0

    return-object p0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unimplemented Unit.sqrt"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 182
    invoke-virtual {p0}, Lgnu/math/Unit;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 185
    :cond_0
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p0, v0, :cond_1

    const-string v0, "unit"

    return-object v0

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lgnu/math/Unit;->factor:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<unnamed unit>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(D)Ljava/lang/String;
    .locals 0

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    .line 157
    sget-object p2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p0, p2, :cond_0

    return-object p1

    .line 160
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/math/Unit;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Lgnu/math/RealNum;)Ljava/lang/String;
    .locals 2

    .line 165
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lgnu/math/Unit;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unit()Lgnu/math/Unit;
    .locals 0

    return-object p0
.end method
