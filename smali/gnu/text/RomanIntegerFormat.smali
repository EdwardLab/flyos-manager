.class public Lgnu/text/RomanIntegerFormat;
.super Ljava/text/NumberFormat;
.source "RomanIntegerFormat.java"


# static fields
.field static final codes:Ljava/lang/String; = "IVXLCDM"

.field private static newRoman:Lgnu/text/RomanIntegerFormat;

.field private static oldRoman:Lgnu/text/RomanIntegerFormat;


# instance fields
.field public oldStyle:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 13
    iput-boolean p1, p0, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    return-void
.end method

.method public static format(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-static {p0, v0}, Lgnu/text/RomanIntegerFormat;->format(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(IZ)Ljava/lang/String;
    .locals 8

    if-lez p0, :cond_7

    const/16 v0, 0x1387

    if-lt p0, v0, :cond_0

    goto :goto_3

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x3

    const/16 v2, 0x3e8

    :goto_0
    if-ltz v1, :cond_6

    .line 47
    div-int v3, p0, v2

    mul-int v4, v3, v2

    sub-int/2addr p0, v4

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x5

    const-string v5, "IVXLCDM"

    if-nez p1, :cond_3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_2

    const/16 v6, 0x9

    if-ne v3, v6, :cond_3

    :cond_2
    mul-int/lit8 v6, v1, 0x2

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    .line 54
    div-int/2addr v3, v4

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    if-lt v3, v4, :cond_4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, -0x5

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    mul-int/lit8 v4, v1, 0x2

    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 45
    :cond_5
    :goto_2
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 68
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 41
    :cond_7
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Z)Lgnu/text/RomanIntegerFormat;
    .locals 1

    if-eqz p0, :cond_1

    .line 24
    sget-object p0, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    if-nez p0, :cond_0

    .line 25
    new-instance p0, Lgnu/text/RomanIntegerFormat;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgnu/text/RomanIntegerFormat;-><init>(Z)V

    sput-object p0, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    .line 26
    :cond_0
    sget-object p0, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    if-nez p0, :cond_2

    .line 31
    new-instance p0, Lgnu/text/RomanIntegerFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/text/RomanIntegerFormat;-><init>(Z)V

    sput-object p0, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    .line 32
    :cond_2
    sget-object p0, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    return-object p0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    double-to-long v0, p1

    long-to-double v2, v0

    cmpl-double v4, v2, p1

    if-nez v4, :cond_0

    .line 102
    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/text/RomanIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 103
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 79
    iget-boolean v0, p0, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x1387

    goto :goto_0

    :cond_0
    const/16 v1, 0xf9f

    :goto_0
    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    long-to-int p2, p1

    .line 80
    invoke-static {p2, v0}, Lgnu/text/RomanIntegerFormat;->format(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p4, :cond_3

    const-wide/16 v0, 0x1

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    move v2, p2

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_2

    const-wide/16 v3, 0xa

    mul-long v0, v0, v3

    const-wide/16 v3, 0x9

    add-long/2addr v0, v3

    goto :goto_2

    .line 91
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    new-instance p2, Ljava/text/DecimalFormat;

    const-string v3, "0"

    invoke-direct {p2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, v2, p4}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 94
    :cond_3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p3
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 109
    new-instance p1, Ljava/lang/Error;

    const-string p2, "RomanIntegerFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
