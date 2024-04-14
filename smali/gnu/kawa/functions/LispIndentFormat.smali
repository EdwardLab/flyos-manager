.class Lgnu/kawa/functions/LispIndentFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field columns:I

.field current:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 708
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(IZ)Lgnu/kawa/functions/LispIndentFormat;
    .locals 1

    .line 717
    new-instance v0, Lgnu/kawa/functions/LispIndentFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispIndentFormat;-><init>()V

    .line 718
    iput p0, v0, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    .line 719
    iput-boolean p1, v0, Lgnu/kawa/functions/LispIndentFormat;->current:Z

    return-object v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    iget p4, p0, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    const/4 v0, 0x0

    invoke-static {p4, v0, p1, p2}, Lgnu/kawa/functions/LispIndentFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result p1

    .line 728
    iget p4, p0, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    const/high16 v0, -0x60000000

    if-ne p4, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 729
    :cond_0
    instance-of p4, p3, Lgnu/mapping/OutPort;

    if-eqz p4, :cond_1

    .line 730
    check-cast p3, Lgnu/mapping/OutPort;

    iget-boolean p4, p0, Lgnu/kawa/functions/LispIndentFormat;->current:Z

    invoke-virtual {p3, p1, p4}, Lgnu/mapping/OutPort;->setIndentation(IZ)V

    :cond_1
    return p2
.end method
