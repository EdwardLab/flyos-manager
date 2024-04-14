.class public Lgnu/text/SourceMessages;
.super Ljava/lang/Object;
.source "SourceMessages.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field public static debugStackTraceOnError:Z = false

.field public static debugStackTraceOnWarning:Z = false


# instance fields
.field current_column:I

.field current_filename:Ljava/lang/String;

.field current_line:I

.field private errorCount:I

.field firstError:Lgnu/text/SourceError;

.field lastError:Lgnu/text/SourceError;

.field lastPrevFilename:Lgnu/text/SourceError;

.field locator:Lgnu/text/SourceLocator;

.field public sortMessages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lgnu/text/SourceMessages;->lastPrevFilename:Lgnu/text/SourceError;

    return-void
.end method


# virtual methods
.method public checkErrors(Ljava/io/PrintStream;I)Z
    .locals 2

    .line 246
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0, p1, p2}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintStream;I)V

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object p1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 250
    iget p1, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 251
    iput v1, p0, Lgnu/text/SourceMessages;->errorCount:I

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public checkErrors(Ljava/io/PrintWriter;I)Z
    .locals 2

    .line 230
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0, p1, p2}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object p1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 234
    iget p1, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 235
    iput v1, p0, Lgnu/text/SourceMessages;->errorCount:I

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    return-void
.end method

.method public clearErrors()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    return-void
.end method

.method public error(CLgnu/text/SourceLocator;Ljava/lang/String;)V
    .locals 1

    .line 139
    new-instance v0, Lgnu/text/SourceError;

    invoke-direct {v0, p1, p2, p3}, Lgnu/text/SourceError;-><init>(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    return-void
.end method

.method public error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 154
    new-instance v0, Lgnu/text/SourceError;

    invoke-direct {v0, p1, p2, p3}, Lgnu/text/SourceError;-><init>(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    .line 155
    iput-object p4, v0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 7

    .line 166
    new-instance v6, Lgnu/text/SourceError;

    iget-object v2, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    iget v3, p0, Lgnu/text/SourceMessages;->current_line:I

    iget v4, p0, Lgnu/text/SourceMessages;->current_column:I

    move-object v0, v6

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    return-void
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;)V
    .locals 7

    .line 134
    new-instance v6, Lgnu/text/SourceError;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    return-void
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 145
    new-instance v6, Lgnu/text/SourceError;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 147
    iput-object p6, v6, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, v6}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 180
    new-instance v6, Lgnu/text/SourceError;

    iget-object v2, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    iget v3, p0, Lgnu/text/SourceMessages;->current_line:I

    iget v4, p0, Lgnu/text/SourceMessages;->current_column:I

    move-object v0, v6

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 182
    iput-object p3, v6, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 183
    invoke-virtual {p0, v6}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 172
    new-instance v6, Lgnu/text/SourceError;

    iget-object v2, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    iget v3, p0, Lgnu/text/SourceMessages;->current_line:I

    iget v4, p0, Lgnu/text/SourceMessages;->current_column:I

    move-object v0, v6

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 174
    iput-object p3, v6, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    .line 175
    invoke-virtual {p0, v6}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    return-void
.end method

.method public error(Lgnu/text/SourceError;)V
    .locals 4

    .line 66
    iget-char v0, p1, Lgnu/text/SourceError;->severity:C

    const/16 v1, 0x77

    const/16 v2, 0x66

    if-ne v0, v2, :cond_0

    const/16 v0, 0x3e8

    .line 67
    iput v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    goto :goto_0

    .line 68
    :cond_0
    iget-char v0, p1, Lgnu/text/SourceError;->severity:C

    if-eq v0, v1, :cond_1

    .line 69
    iget v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 70
    :cond_1
    :goto_0
    sget-boolean v0, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    if-eqz v0, :cond_2

    iget-char v0, p1, Lgnu/text/SourceError;->severity:C

    const/16 v3, 0x65

    if-eq v0, v3, :cond_3

    iget-char v0, p1, Lgnu/text/SourceError;->severity:C

    if-eq v0, v2, :cond_3

    :cond_2
    sget-boolean v0, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    if-eqz v0, :cond_4

    iget-char v0, p1, Lgnu/text/SourceError;->severity:C

    if-ne v0, v1, :cond_4

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p1, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    .line 78
    :cond_4
    iget-object v0, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iget-object v0, v0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    iget-object v1, p1, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 80
    iget-object v0, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v0, p0, Lgnu/text/SourceMessages;->lastPrevFilename:Lgnu/text/SourceError;

    .line 81
    :cond_5
    iget-object v0, p0, Lgnu/text/SourceMessages;->lastPrevFilename:Lgnu/text/SourceError;

    .line 82
    iget-boolean v1, p0, Lgnu/text/SourceMessages;->sortMessages:Z

    if-eqz v1, :cond_b

    iget-char v1, p1, Lgnu/text/SourceError;->severity:C

    if-ne v1, v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    if-nez v0, :cond_7

    .line 90
    iget-object v1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    goto :goto_2

    .line 92
    :cond_7
    iget-object v1, v0, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    :goto_2
    if-nez v1, :cond_8

    goto :goto_4

    .line 95
    :cond_8
    iget v2, p1, Lgnu/text/SourceError;->line:I

    if-eqz v2, :cond_a

    iget v2, v1, Lgnu/text/SourceError;->line:I

    if-eqz v2, :cond_a

    .line 97
    iget v2, p1, Lgnu/text/SourceError;->line:I

    iget v3, v1, Lgnu/text/SourceError;->line:I

    if-ge v2, v3, :cond_9

    goto :goto_4

    .line 99
    :cond_9
    iget v2, p1, Lgnu/text/SourceError;->line:I

    iget v3, v1, Lgnu/text/SourceError;->line:I

    if-ne v2, v3, :cond_a

    iget v2, p1, Lgnu/text/SourceError;->column:I

    if-eqz v2, :cond_a

    iget v2, v1, Lgnu/text/SourceError;->column:I

    if-eqz v2, :cond_a

    .line 102
    iget v2, p1, Lgnu/text/SourceError;->column:I

    iget v3, v1, Lgnu/text/SourceError;->column:I

    if-ge v2, v3, :cond_a

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto :goto_1

    .line 83
    :cond_b
    :goto_3
    iget-object v0, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    :goto_4
    if-nez v0, :cond_c

    .line 111
    iget-object v1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    iput-object v1, p1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    .line 112
    iput-object p1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    goto :goto_5

    .line 116
    :cond_c
    iget-object v1, v0, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    iput-object v1, p1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    .line 117
    iput-object p1, v0, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    .line 119
    :goto_5
    iget-object v1, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    if-ne v0, v1, :cond_d

    .line 120
    iput-object p1, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    :cond_d
    return-void
.end method

.method public final getColumnNumber()I
    .locals 1

    .line 302
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/text/SourceMessages;->current_column:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getErrorCount()I
    .locals 1

    .line 45
    iget v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    return v0
.end method

.method public getErrors()Lgnu/text/SourceError;
    .locals 1

    .line 24
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 296
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/text/SourceMessages;->current_line:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lgnu/text/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lgnu/text/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public printAll(Ljava/io/PrintStream;I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lgnu/text/SourceError;->println(Ljava/io/PrintStream;)V

    .line 190
    iget-object v0, v0, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printAll(Ljava/io/PrintWriter;I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lgnu/text/SourceError;->println(Ljava/io/PrintWriter;)V

    .line 200
    iget-object v0, v0, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seenErrors()Z
    .locals 1

    .line 40
    iget v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public seenErrorsOrWarnings()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setColumn(I)V
    .locals 0

    .line 310
    iput p1, p0, Lgnu/text/SourceMessages;->current_column:I

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    return-void
.end method

.method public setLine(I)V
    .locals 0

    .line 308
    iput p1, p0, Lgnu/text/SourceMessages;->current_line:I

    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 0

    .line 315
    iput-object p1, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    .line 316
    iput p2, p0, Lgnu/text/SourceMessages;->current_line:I

    .line 317
    iput p3, p0, Lgnu/text/SourceMessages;->current_column:I

    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    .line 274
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lgnu/text/SourceMessages;->current_line:I

    .line 275
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lgnu/text/SourceMessages;->current_column:I

    .line 276
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    return-void
.end method

.method public final setSourceLocator(Lgnu/text/SourceLocator;)V
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    .line 260
    :cond_0
    iput-object p1, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public final swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;
    .locals 1

    .line 265
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    .line 266
    iput-object p1, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 212
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    iget-object v1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    iget-object v1, v1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
