.class public Lgnu/kawa/functions/IntegerFormat;
.super Lgnu/text/IntegerFormat;
.source "IntegerFormat.java"


# static fields
.field private static plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/text/IntegerFormat;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/kawa/functions/IntegerFormat;
    .locals 1

    .line 20
    sget-object v0, Lgnu/kawa/functions/IntegerFormat;->plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lgnu/kawa/functions/IntegerFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/IntegerFormat;-><init>()V

    sput-object v0, Lgnu/kawa/functions/IntegerFormat;->plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;

    .line 22
    :cond_0
    sget-object v0, Lgnu/kawa/functions/IntegerFormat;->plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;

    return-object v0
.end method

.method public static getInstance(IIIIII)Ljava/text/Format;
    .locals 6

    const/16 v0, 0xa

    const/4 v1, 0x1

    const/high16 v2, -0x40000000    # -2.0f

    if-ne p0, v2, :cond_3

    if-ne p2, v2, :cond_2

    if-ne p2, v2, :cond_2

    if-ne p3, v2, :cond_2

    if-ne p4, v2, :cond_2

    and-int/lit8 p0, p5, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_1

    .line 39
    invoke-static {v1}, Lgnu/text/RomanIntegerFormat;->getInstance(Z)Lgnu/text/RomanIntegerFormat;

    move-result-object p0

    return-object p0

    .line 41
    :cond_1
    invoke-static {v1}, Lgnu/text/EnglishIntegerFormat;->getInstance(Z)Lgnu/text/EnglishIntegerFormat;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0xa

    :cond_3
    if-ne p1, v2, :cond_4

    const/4 p1, 0x1

    :cond_4
    const/16 v3, 0x20

    if-ne p2, v2, :cond_5

    const/16 p2, 0x20

    :cond_5
    const/16 v4, 0x2c

    if-ne p3, v2, :cond_6

    const/16 p3, 0x2c

    :cond_6
    const/4 v5, 0x3

    if-ne p4, v2, :cond_7

    const/4 p4, 0x3

    :cond_7
    if-ne p0, v0, :cond_8

    if-ne p1, v1, :cond_8

    if-ne p2, v3, :cond_8

    if-ne p3, v4, :cond_8

    if-ne p4, v5, :cond_8

    if-nez p5, :cond_8

    .line 52
    invoke-static {}, Lgnu/kawa/functions/IntegerFormat;->getInstance()Lgnu/kawa/functions/IntegerFormat;

    move-result-object p0

    return-object p0

    .line 53
    :cond_8
    new-instance v0, Lgnu/kawa/functions/IntegerFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/IntegerFormat;-><init>()V

    .line 54
    iput p0, v0, Lgnu/kawa/functions/IntegerFormat;->base:I

    .line 55
    iput p1, v0, Lgnu/kawa/functions/IntegerFormat;->minWidth:I

    .line 56
    iput p2, v0, Lgnu/kawa/functions/IntegerFormat;->padChar:I

    .line 57
    iput p3, v0, Lgnu/kawa/functions/IntegerFormat;->commaChar:I

    .line 58
    iput p4, v0, Lgnu/kawa/functions/IntegerFormat;->commaInterval:I

    .line 59
    iput p5, v0, Lgnu/kawa/functions/IntegerFormat;->flags:I

    return-object v0
.end method


# virtual methods
.method public convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    .line 65
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lgnu/math/RealNum;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object p1

    invoke-virtual {p1, p2}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/text/IntegerFormat;->convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
