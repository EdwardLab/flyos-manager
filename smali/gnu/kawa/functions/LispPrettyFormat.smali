.class Lgnu/kawa/functions/LispPrettyFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field body:Ljava/text/Format;

.field perLine:Z

.field prefix:Ljava/lang/String;

.field seenAt:Z

.field segments:[Ljava/text/Format;

.field suffix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 875
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 889
    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    .line 890
    instance-of v2, p3, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Lgnu/mapping/OutPort;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 893
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lgnu/kawa/functions/LispPrettyFormat;->seenAt:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    .line 896
    iget-boolean v3, p0, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    invoke-virtual {v2, v0, v3, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 897
    :cond_1
    iget-object v0, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    invoke-static {v0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p1

    goto :goto_2

    .line 901
    :cond_2
    aget-object p1, p1, p2

    .line 902
    invoke-static {p1}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v0, ""

    move-object v1, v0

    :cond_3
    if-eqz v2, :cond_4

    .line 906
    iget-boolean v4, p0, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    iget-object v5, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v0, v4, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    if-nez v3, :cond_5

    const/4 p4, -0x1

    .line 908
    invoke-static {p1, p3, p4, v0}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    goto :goto_1

    .line 910
    :cond_5
    iget-object p1, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 p1, p2, 0x1

    :goto_2
    if-eqz v2, :cond_6

    .line 917
    invoke-virtual {v2, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    :cond_6
    return p1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    :cond_7
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 924
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "LispPrettyFormat["

    .line 925
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "prefix: \""

    .line 926
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\", suffix: \""

    .line 927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\", body: "

    .line 928
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 929
    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 930
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
