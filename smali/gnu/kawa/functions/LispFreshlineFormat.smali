.class Lgnu/kawa/functions/LispFreshlineFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 1111
    iput p1, p0, Lgnu/kawa/functions/LispFreshlineFormat;->count:I

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

    .line 1117
    iget p4, p0, Lgnu/kawa/functions/LispFreshlineFormat;->count:I

    const/4 v0, 0x1

    invoke-static {p4, v0, p1, p2}, Lgnu/kawa/functions/LispFreshlineFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result p1

    .line 1118
    iget p4, p0, Lgnu/kawa/functions/LispFreshlineFormat;->count:I

    const/high16 v0, -0x60000000

    if-ne p4, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    if-lez p1, :cond_2

    .line 1121
    instance-of p4, p3, Lgnu/mapping/OutPort;

    if-eqz p4, :cond_1

    .line 1123
    move-object p4, p3

    check-cast p4, Lgnu/mapping/OutPort;

    invoke-virtual {p4}, Lgnu/mapping/OutPort;->freshLine()V

    add-int/lit8 p1, p1, -0x1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    const/16 p4, 0xa

    .line 1127
    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    return p2
.end method
