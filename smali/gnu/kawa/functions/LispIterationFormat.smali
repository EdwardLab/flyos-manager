.class Lgnu/kawa/functions/LispIterationFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field atLeastOnce:Z

.field body:Ljava/text/Format;

.field maxIterations:I

.field seenAt:Z

.field seenColon:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 935
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ne v1, p1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 953
    :cond_0
    array-length v2, p2

    if-ne p3, v2, :cond_1

    if-gtz v1, :cond_3

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    if-eqz p5, :cond_2

    .line 957
    aget-object v3, p2, p3

    .line 958
    invoke-static {v3}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 962
    invoke-static {p0, v3, v0, p4, v2}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v2

    add-int/lit8 p3, p3, 0x1

    .line 964
    invoke-static {v2}, Lgnu/text/ReportFormat;->resultCode(I)I

    move-result v2

    const/16 v3, 0xf2

    if-ne v2, v3, :cond_4

    goto :goto_1

    .line 969
    :cond_2
    invoke-static {p0, p2, p3, p4, v2}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p3

    if-gez p3, :cond_4

    .line 972
    invoke-static {p3}, Lgnu/text/ReportFormat;->nextArg(I)I

    move-result p3

    :cond_3
    :goto_1
    return p3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    iget p4, p0, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    const/4 v0, -0x1

    invoke-static {p4, v0, p1, p2}, Lgnu/kawa/functions/LispIterationFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v2

    .line 986
    iget p4, p0, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    const/high16 v0, -0x60000000

    if-ne p4, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 988
    :cond_0
    iget-object p4, p0, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    if-nez p4, :cond_2

    add-int/lit8 p4, p2, 0x1

    .line 992
    aget-object p2, p1, p2

    .line 993
    instance-of v0, p2, Ljava/text/Format;

    if-eqz v0, :cond_1

    .line 994
    check-cast p2, Ljava/text/Format;

    move-object v1, p2

    goto :goto_0

    .line 999
    :cond_1
    :try_start_0
    new-instance v0, Lgnu/kawa/functions/LispFormat;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    const-string p2, "<invalid argument for \"~{~}\" format>"

    .line 1003
    invoke-static {p3, p2}, Lgnu/kawa/functions/LispIterationFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1004
    array-length p1, p1

    return p1

    :cond_2
    move-object v1, p4

    move p4, p2

    .line 1008
    :goto_0
    iget-boolean p2, p0, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    if-eqz p2, :cond_3

    .line 1010
    iget-boolean v6, p0, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    iget-boolean v7, p0, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    move-object v3, p1

    move v4, p4

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lgnu/kawa/functions/LispIterationFormat;->format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I

    move-result p1

    return p1

    .line 1015
    :cond_3
    aget-object p1, p1, p4

    .line 1016
    invoke-static {p1}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1018
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 1020
    iget-boolean v6, p0, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    iget-boolean v7, p0, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lgnu/kawa/functions/LispIterationFormat;->format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I

    :goto_1
    add-int/lit8 p4, p4, 0x1

    return p4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1028
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "LispIterationFormat["

    .line 1029
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1030
    iget-object v1, p0, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 1031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
