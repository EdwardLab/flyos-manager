.class public Lgnu/text/PadFormat;
.super Lgnu/text/ReportFormat;
.source "PadFormat.java"


# instance fields
.field fmt:Ljava/text/Format;

.field minWidth:I

.field padChar:C

.field where:I


# direct methods
.method public constructor <init>(Ljava/text/Format;I)V
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x64

    .line 29
    invoke-direct {p0, p1, p2, v0, v1}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    return-void
.end method

.method public constructor <init>(Ljava/text/Format;ICI)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/text/PadFormat;->fmt:Ljava/text/Format;

    .line 22
    iput p2, p0, Lgnu/text/PadFormat;->minWidth:I

    .line 23
    iput-char p3, p0, Lgnu/text/PadFormat;->padChar:C

    .line 24
    iput p4, p0, Lgnu/text/PadFormat;->where:I

    return-void
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 69
    instance-of v1, p0, Lgnu/text/ReportFormat;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 70
    check-cast p0, Lgnu/text/ReportFormat;

    invoke-virtual {p0, p1, p2, v0, p9}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p0

    goto :goto_0

    .line 71
    :cond_0
    instance-of v1, p0, Ljava/text/MessageFormat;

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0, p1, v0, p9}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 75
    array-length p0, p1

    goto :goto_0

    .line 79
    :cond_1
    aget-object p1, p1, p2

    invoke-virtual {p0, p1, v0, p9}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p2, 0x1

    .line 82
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 83
    invoke-static {p1, p5, p6, p7}, Lgnu/text/PadFormat;->padNeeded(IIII)I

    move-result p2

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    if-lez p2, :cond_9

    const/4 p6, -0x1

    const/4 p7, 0x0

    if-ne p8, p6, :cond_7

    if-lez p1, :cond_6

    .line 92
    invoke-virtual {p5, p7}, Ljava/lang/String;->charAt(I)C

    move-result p8

    const/16 p9, 0x2d

    if-eq p8, p9, :cond_3

    const/16 p9, 0x2b

    if-ne p8, p9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 96
    :cond_3
    :goto_1
    invoke-virtual {p3, p8}, Ljava/io/Writer;->write(I)V

    :goto_2
    sub-int/2addr p1, v2

    const/4 p8, 0x2

    if-le p1, p8, :cond_5

    .line 98
    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p8, 0x30

    if-ne p1, p8, :cond_5

    .line 100
    invoke-virtual {p3, p8}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v2, v2, 0x1

    .line 101
    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p8, 0x78

    if-eq p1, p8, :cond_4

    const/16 p8, 0x58

    if-ne p1, p8, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 105
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    :cond_5
    if-lez v2, :cond_6

    .line 109
    invoke-virtual {p5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object p5, p1

    :cond_6
    const/4 p8, 0x0

    :cond_7
    mul-int p8, p8, p2

    .line 113
    div-int/lit8 p8, p8, 0x64

    sub-int/2addr p2, p8

    :goto_3
    add-int/2addr p2, p6

    if-ltz p2, :cond_8

    .line 124
    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    .line 125
    :cond_8
    invoke-virtual {p3, p5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_4
    add-int/2addr p8, p6

    if-ltz p8, :cond_a

    .line 127
    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(I)V

    goto :goto_4

    .line 131
    :cond_9
    invoke-virtual {p3, p5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_a
    return p0
.end method

.method public static padNeeded(IIII)I
    .locals 1

    add-int/2addr p3, p0

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    sub-int p2, p1, p3

    :cond_0
    :goto_0
    if-ge p3, p1, :cond_1

    add-int/2addr p3, p2

    goto :goto_0

    :cond_1
    sub-int/2addr p3, p0

    return p3
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lgnu/text/PadFormat;->fmt:Ljava/text/Format;

    iget-char v4, p0, Lgnu/text/PadFormat;->padChar:C

    iget v5, p0, Lgnu/text/PadFormat;->minWidth:I

    iget v8, p0, Lgnu/text/PadFormat;->where:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lgnu/text/PadFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I

    move-result p1

    return p1
.end method
