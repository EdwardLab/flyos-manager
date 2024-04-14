.class public Lgnu/lists/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCapitalize(Lgnu/lists/CharSeq;)V
    .locals 4

    .line 30
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 33
    invoke-interface {p0, v2}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v3

    .line 34
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-static {v3}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v1

    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 38
    :goto_1
    invoke-interface {p0, v2, v1}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static makeLowerCase(Lgnu/lists/CharSeq;)V
    .locals 2

    .line 20
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 21
    invoke-interface {p0, v0}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-interface {p0, v0, v1}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static makeUpperCase(Lgnu/lists/CharSeq;)V
    .locals 2

    .line 13
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 14
    invoke-interface {p0, v0}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-interface {p0, v0, v1}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V
    .locals 5

    .line 51
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x22

    .line 52
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 55
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_7

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-lez p2, :cond_8

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    const-string v3, "\\n"

    .line 62
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    const-string v3, "\\r"

    .line 64
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    const-string v3, "\\t"

    .line 66
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    const-string v3, "\\a"

    .line 68
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    const-string v3, "\\b"

    .line 70
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    const-string v3, "\\v"

    .line 72
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 v4, 0xc

    if-ne v3, v4, :cond_8

    const-string v3, "\\f"

    .line 74
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 57
    :cond_7
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 76
    :cond_8
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method
