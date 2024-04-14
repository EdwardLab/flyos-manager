.class Lgnu/kawa/functions/LispNewlineFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# static fields
.field static final line_separator:Ljava/lang/String;


# instance fields
.field count:I

.field kind:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 664
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/LispNewlineFormat;->line_separator:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 662
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;
    .locals 1

    .line 676
    new-instance v0, Lgnu/kawa/functions/LispNewlineFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispNewlineFormat;-><init>()V

    .line 677
    iput p0, v0, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    .line 678
    iput p1, v0, Lgnu/kawa/functions/LispNewlineFormat;->kind:I

    return-object v0
.end method

.method public static printNewline(ILjava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    instance-of v0, p1, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_0

    .line 697
    check-cast p1, Lgnu/mapping/OutPort;

    invoke-virtual {p1, p0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    goto :goto_0

    .line 698
    :cond_0
    instance-of p0, p1, Ljava/io/PrintWriter;

    if-eqz p0, :cond_1

    .line 700
    check-cast p1, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 702
    :cond_1
    sget-object p0, Lgnu/kawa/functions/LispNewlineFormat;->line_separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    iget p4, p0, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    const/4 v0, 0x1

    invoke-static {p4, v0, p1, p2}, Lgnu/kawa/functions/LispNewlineFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result p1

    .line 687
    iget p4, p0, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    const/high16 v0, -0x60000000

    if-ne p4, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 689
    iget p4, p0, Lgnu/kawa/functions/LispNewlineFormat;->kind:I

    invoke-static {p4, p3}, Lgnu/kawa/functions/LispNewlineFormat;->printNewline(ILjava/io/Writer;)V

    goto :goto_0

    :cond_1
    return p2
.end method
