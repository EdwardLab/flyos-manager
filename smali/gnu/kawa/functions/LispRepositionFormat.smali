.class Lgnu/kawa/functions/LispRepositionFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field absolute:Z

.field backwards:Z

.field count:I


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    .line 1084
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 1085
    iput p1, p0, Lgnu/kawa/functions/LispRepositionFormat;->count:I

    .line 1086
    iput-boolean p2, p0, Lgnu/kawa/functions/LispRepositionFormat;->backwards:Z

    .line 1087
    iput-boolean p3, p0, Lgnu/kawa/functions/LispRepositionFormat;->absolute:Z

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    iget p3, p0, Lgnu/kawa/functions/LispRepositionFormat;->count:I

    iget-boolean p4, p0, Lgnu/kawa/functions/LispRepositionFormat;->absolute:Z

    xor-int/lit8 p4, p4, 0x1

    invoke-static {p3, p4, p1, p2}, Lgnu/kawa/functions/LispRepositionFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result p3

    .line 1095
    iget-boolean p4, p0, Lgnu/kawa/functions/LispRepositionFormat;->absolute:Z

    if-nez p4, :cond_1

    .line 1097
    iget-boolean p4, p0, Lgnu/kawa/functions/LispRepositionFormat;->backwards:Z

    if-eqz p4, :cond_0

    neg-int p3, p3

    :cond_0
    add-int/2addr p3, p2

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 1101
    :cond_2
    array-length p2, p1

    if-le p3, p2, :cond_3

    array-length p3, p1

    :cond_3
    :goto_0
    return p3
.end method
