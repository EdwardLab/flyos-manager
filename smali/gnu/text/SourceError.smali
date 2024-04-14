.class public Lgnu/text/SourceError;
.super Ljava/lang/Object;
.source "SourceError.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# instance fields
.field public code:Ljava/lang/String;

.field public column:I

.field public fakeException:Ljava/lang/Throwable;

.field public filename:Ljava/lang/String;

.field public line:I

.field public message:Ljava/lang/String;

.field public next:Lgnu/text/SourceError;

.field public severity:C


# direct methods
.method public constructor <init>(CLgnu/text/SourceLocator;Ljava/lang/String;)V
    .locals 6

    .line 54
    invoke-interface {p2}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v3

    invoke-interface {p2}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-char p1, p0, Lgnu/text/SourceError;->severity:C

    .line 46
    iput-object p2, p0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    .line 47
    iput p3, p0, Lgnu/text/SourceError;->line:I

    .line 48
    iput p4, p0, Lgnu/text/SourceError;->column:I

    .line 49
    iput-object p5, p0, Lgnu/text/SourceError;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;CLjava/lang/String;)V
    .locals 6

    .line 62
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 65
    iget p1, p0, Lgnu/text/SourceError;->column:I

    if-ltz p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 66
    iput p1, p0, Lgnu/text/SourceError;->column:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .line 154
    iget v0, p0, Lgnu/text/SourceError;->column:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 153
    iget v0, p0, Lgnu/text/SourceError;->line:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 0

    .line 122
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public println(Ljava/io/PrintStream;)V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lgnu/text/SourceError;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0xa

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 147
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public println(Ljava/io/PrintWriter;)V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lgnu/text/SourceError;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0xa

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 136
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 133
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    iget-object v1, p0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "<unknown>"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget v1, p0, Lgnu/text/SourceError;->line:I

    if-gtz v1, :cond_1

    iget v1, p0, Lgnu/text/SourceError;->column:I

    if-lez v1, :cond_2

    :cond_1
    const/16 v1, 0x3a

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    iget v2, p0, Lgnu/text/SourceError;->line:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 80
    iget v2, p0, Lgnu/text/SourceError;->column:I

    if-lez v2, :cond_2

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    iget v1, p0, Lgnu/text/SourceError;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, ": "

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-char v1, p0, Lgnu/text/SourceError;->severity:C

    const/16 v2, 0x77

    if-ne v1, v2, :cond_3

    const-string v1, "warning - "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_3
    iget-object v1, p0, Lgnu/text/SourceError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v1, p0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, " ["

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v1, p0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_4
    iget-object v1, p0, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 101
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    .line 102
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    const-string v3, "\n"

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "    "

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
