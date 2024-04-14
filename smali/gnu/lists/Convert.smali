.class public Lgnu/lists/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# static fields
.field public static instance:Lgnu/lists/Convert;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lgnu/lists/Convert;

    invoke-direct {v0}, Lgnu/lists/Convert;-><init>()V

    sput-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/lists/Convert;
    .locals 1

    .line 16
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    return-object v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2

    .line 268
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static setInstance(Lgnu/lists/Convert;)V
    .locals 0

    .line 18
    sput-object p0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    return-void
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 1

    .line 37
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toByte(Ljava/lang/Object;)B
    .locals 1

    .line 77
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToByte(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public static toByteUnsigned(Ljava/lang/Object;)B
    .locals 1

    .line 97
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToByteUnsigned(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public static toChar(Ljava/lang/Object;)C
    .locals 1

    .line 57
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToChar(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public static toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 260
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toFloat(Ljava/lang/Object;)F
    .locals 1

    .line 240
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 1

    .line 157
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static toIntUnsigned(Ljava/lang/Object;)I
    .locals 1

    .line 180
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToIntUnsigned(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static toLong(Ljava/lang/Object;)J
    .locals 2

    .line 200
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLongUnsigned(Ljava/lang/Object;)J
    .locals 2

    .line 220
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToLongUnsigned(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toObject(B)Ljava/lang/Object;
    .locals 1

    .line 72
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->byteToObject(B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(C)Ljava/lang/Object;
    .locals 1

    .line 52
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->charToObject(C)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(D)Ljava/lang/Object;
    .locals 1

    .line 255
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0, p1}, Lgnu/lists/Convert;->doubleToObject(D)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(F)Ljava/lang/Object;
    .locals 1

    .line 235
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->floatToObject(F)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(I)Ljava/lang/Object;
    .locals 1

    .line 152
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->intToObject(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(J)Ljava/lang/Object;
    .locals 1

    .line 195
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0, p1}, Lgnu/lists/Convert;->longToObject(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(S)Ljava/lang/Object;
    .locals 1

    .line 112
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->shortToObject(S)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Z)Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->booleanToObject(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObjectUnsigned(B)Ljava/lang/Object;
    .locals 1

    .line 92
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->byteToObjectUnsigned(B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObjectUnsigned(I)Ljava/lang/Object;
    .locals 1

    .line 175
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->intToObjectUnsigned(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObjectUnsigned(J)Ljava/lang/Object;
    .locals 1

    .line 215
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0, p1}, Lgnu/lists/Convert;->longToObjectUnsigned(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toObjectUnsigned(S)Ljava/lang/Object;
    .locals 1

    .line 132
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->shortToObjectUnsigned(S)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toShort(Ljava/lang/Object;)S
    .locals 1

    .line 117
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToShort(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public static toShortUnsigned(Ljava/lang/Object;)S
    .locals 1

    .line 137
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    invoke-virtual {v0, p0}, Lgnu/lists/Convert;->objectToShortUnsigned(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method


# virtual methods
.method public booleanToObject(Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method

.method public byteToObject(B)Ljava/lang/Object;
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public byteToObjectUnsigned(B)Ljava/lang/Object;
    .locals 1

    .line 82
    new-instance v0, Ljava/lang/Integer;

    and-int/lit16 p1, p1, 0xff

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public charToObject(C)Ljava/lang/Object;
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method public doubleToObject(D)Ljava/lang/Object;
    .locals 1

    .line 245
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public floatToObject(F)Ljava/lang/Object;
    .locals 1

    .line 225
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public intToObject(I)Ljava/lang/Object;
    .locals 1

    .line 142
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public intToObjectUnsigned(I)Ljava/lang/Object;
    .locals 5

    if-ltz p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/Long;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public longToObject(J)Ljava/lang/Object;
    .locals 1

    .line 185
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public longToObjectUnsigned(J)Ljava/lang/Object;
    .locals 1

    .line 205
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public objectToBoolean(Ljava/lang/Object;)Z
    .locals 1

    .line 27
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public objectToByte(Ljava/lang/Object;)B
    .locals 0

    .line 67
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    return p1
.end method

.method public objectToByteUnsigned(Ljava/lang/Object;)B
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    return p1
.end method

.method public objectToChar(Ljava/lang/Object;)C
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method public objectToDouble(Ljava/lang/Object;)D
    .locals 2

    .line 250
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public objectToFloat(Ljava/lang/Object;)F
    .locals 0

    .line 230
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1
.end method

.method public objectToInt(Ljava/lang/Object;)I
    .locals 0

    .line 147
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public objectToIntUnsigned(Ljava/lang/Object;)I
    .locals 0

    .line 170
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public objectToLong(Ljava/lang/Object;)J
    .locals 2

    .line 190
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public objectToLongUnsigned(Ljava/lang/Object;)J
    .locals 2

    .line 210
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public objectToShort(Ljava/lang/Object;)S
    .locals 0

    .line 107
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    return p1
.end method

.method public objectToShortUnsigned(Ljava/lang/Object;)S
    .locals 0

    .line 127
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    return p1
.end method

.method public shortToObject(S)Ljava/lang/Object;
    .locals 1

    .line 102
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public shortToObjectUnsigned(S)Ljava/lang/Object;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/Integer;

    const v1, 0xffff

    and-int/2addr p1, v1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method
