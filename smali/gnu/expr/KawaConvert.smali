.class public Lgnu/expr/KawaConvert;
.super Lgnu/lists/Convert;
.source "KawaConvert.java"


# static fields
.field public static instance:Lgnu/lists/Convert;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lgnu/expr/KawaConvert;

    invoke-direct {v0}, Lgnu/expr/KawaConvert;-><init>()V

    sput-object v0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/lists/Convert;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/lists/Convert;
    .locals 1

    .line 13
    sget-object v0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-object v0
.end method

.method public static setInstance(Lgnu/lists/Convert;)V
    .locals 0

    .line 15
    sput-object p0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-void
.end method


# virtual methods
.method public byteToObject(B)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public byteToObjectUnsigned(B)Ljava/lang/Object;
    .locals 0

    and-int/lit16 p1, p1, 0xff

    .line 49
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public charToObject(C)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    return-object p1
.end method

.method public doubleToObject(D)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-static {p1, p2}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object p1

    return-object p1
.end method

.method public floatToObject(F)Ljava/lang/Object;
    .locals 2

    float-to-double v0, p1

    .line 69
    invoke-static {v0, v1}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object p1

    return-object p1
.end method

.method public intToObject(I)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public intToObjectUnsigned(I)Ljava/lang/Object;
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 59
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public longToObject(J)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public longToObjectUnsigned(J)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-static {p1, p2}, Lgnu/math/IntNum;->makeU(J)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public objectToChar(Ljava/lang/Object;)C
    .locals 0

    .line 24
    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1

    return p1
.end method

.method public shortToObject(S)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public shortToObjectUnsigned(S)Ljava/lang/Object;
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 54
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method
