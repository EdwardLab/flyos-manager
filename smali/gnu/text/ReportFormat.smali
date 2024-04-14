.class public abstract Lgnu/text/ReportFormat;
.super Ljava/text/Format;
.source "ReportFormat.java"


# static fields
.field public static final PARAM_FROM_COUNT:I = -0x50000000

.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    instance-of v0, p0, Lgnu/text/ReportFormat;

    if-eqz v0, :cond_0

    .line 81
    check-cast p0, Lgnu/text/ReportFormat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p0

    return p0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    instance-of v1, p0, Ljava/text/MessageFormat;

    if-eqz v1, :cond_1

    .line 84
    invoke-static {p0, p1, p2, v0, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p2, 0x1

    .line 86
    aget-object p1, p1, p2

    invoke-virtual {p0, p1, v0, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move p0, v1

    .line 87
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 88
    new-array p2, p1, [C

    const/4 p4, 0x0

    .line 89
    invoke-virtual {v0, p4, p1, p2, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 90
    invoke-virtual {p3, p2}, Ljava/io/Writer;->write([C)V

    return p0
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 4

    .line 97
    instance-of v0, p0, Lgnu/text/ReportFormat;

    if-eqz v0, :cond_0

    .line 98
    check-cast p0, Lgnu/text/ReportFormat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p0

    return p0

    .line 101
    :cond_0
    instance-of v0, p0, Ljava/text/MessageFormat;

    if-eqz v0, :cond_1

    .line 103
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez p2, :cond_2

    .line 106
    array-length v1, p1

    sub-int/2addr v1, p2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 107
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    goto :goto_0

    .line 115
    :cond_1
    aget-object p1, p1, p2

    const/4 v0, 0x1

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p3, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    add-int/2addr p2, v0

    return p2
.end method

.method protected static getParam(IC[Ljava/lang/Object;I)C
    .locals 0

    .line 173
    invoke-static {p0, p1, p2, p3}, Lgnu/text/ReportFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method protected static getParam(II[Ljava/lang/Object;I)I
    .locals 1

    const/high16 v0, -0x50000000

    if-ne p0, v0, :cond_0

    .line 162
    array-length p0, p2

    sub-int/2addr p0, p3

    return p0

    :cond_0
    const/high16 v0, -0x60000000

    if-ne p0, v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    aget-object p0, p2, p3

    invoke-static {p0, p1}, Lgnu/text/ReportFormat;->getParam(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    return p1

    :cond_2
    const/high16 p2, -0x40000000    # -2.0f

    if-ne p0, p2, :cond_3

    return p1

    :cond_3
    return p0
.end method

.method public static getParam(Ljava/lang/Object;I)I
    .locals 1

    .line 149
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 150
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 151
    :cond_0
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 152
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0

    .line 153
    :cond_1
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_2

    .line 154
    check-cast p0, Lgnu/text/Char;

    invoke-virtual {p0}, Lgnu/text/Char;->charValue()C

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method public static nextArg(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static print(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    instance-of v0, p0, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 127
    check-cast p0, Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write([C)V

    :goto_0
    return-void
.end method

.method public static print(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1

    .line 134
    instance-of v0, p0, Lgnu/text/Printable;

    if-eqz v0, :cond_0

    .line 135
    check-cast p0, Lgnu/text/Printable;

    invoke-interface {p0, p1}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "null"

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-interface {p1, p0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static result(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static resultCode(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method


# virtual methods
.method public format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 48
    invoke-virtual {p0, v0, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p1

    return p1
.end method

.method public abstract format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 1

    .line 61
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 64
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_0

    return p1

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Ljava/lang/Error;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 54
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 144
    new-instance p1, Ljava/lang/Error;

    const-string p2, "ReportFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
