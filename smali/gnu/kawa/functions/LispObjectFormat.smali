.class Lgnu/kawa/functions/LispObjectFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field base:Lgnu/text/ReportFormat;

.field colInc:I

.field minPad:I

.field minWidth:I

.field padChar:I

.field where:I


# direct methods
.method public constructor <init>(Lgnu/text/ReportFormat;IIIII)V
    .locals 0

    .line 751
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 752
    iput-object p1, p0, Lgnu/kawa/functions/LispObjectFormat;->base:Lgnu/text/ReportFormat;

    .line 753
    iput p2, p0, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    .line 754
    iput p3, p0, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    .line 755
    iput p4, p0, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    .line 756
    iput p5, p0, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    .line 757
    iput p6, p0, Lgnu/kawa/functions/LispObjectFormat;->where:I

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    iget v2, p0, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    .line 765
    iget v2, p0, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    const/high16 v4, -0x60000000

    if-ne v2, v4, :cond_0

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 766
    :goto_0
    iget v2, p0, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    const/4 v6, 0x1

    invoke-static {v2, v6, p1, v0}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    .line 767
    iget v2, p0, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    if-ne v2, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 768
    :cond_1
    iget v2, p0, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    invoke-static {v2, v3, p1, v0}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v7

    .line 769
    iget v2, p0, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    if-ne v2, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 770
    :cond_2
    iget v2, p0, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    const/16 v3, 0x20

    invoke-static {v2, v3, p1, v0}, Lgnu/kawa/functions/LispObjectFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v8

    .line 771
    iget v2, p0, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    if-ne v2, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    move v2, v0

    .line 772
    iget-object v0, p0, Lgnu/kawa/functions/LispObjectFormat;->base:Lgnu/text/ReportFormat;

    iget v9, p0, Lgnu/kawa/functions/LispObjectFormat;->where:I

    move-object v1, p1

    move-object v3, p3

    move v4, v8

    move v8, v9

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lgnu/text/PadFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I

    move-result v0

    return v0
.end method
