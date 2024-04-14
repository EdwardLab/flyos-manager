.class Lgnu/kawa/functions/LispTabulateFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field colinc:I

.field colnum:I

.field padChar:I

.field relative:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 1142
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 1143
    iput p1, p0, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    .line 1144
    iput p2, p0, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    .line 1145
    iput-boolean p4, p0, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    .line 1146
    iput p3, p0, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1152
    iget p4, p0, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    const/4 v0, 0x1

    invoke-static {p4, v0, p1, p2}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result p4

    .line 1153
    iget v1, p0, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1154
    :cond_0
    iget v1, p0, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    invoke-static {v1, v0, p1, p2}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 1155
    iget v1, p0, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    if-ne v1, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 1157
    :cond_1
    iget v1, p0, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    const/16 v3, 0x20

    invoke-static {v1, v3, p1, p2}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result p1

    .line 1158
    iget v1, p0, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    if-ne v1, v2, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 1160
    :cond_2
    instance-of v1, p3, Lgnu/mapping/OutPort;

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 1161
    move-object v1, p3

    check-cast v1, Lgnu/mapping/OutPort;

    invoke-virtual {v1}, Lgnu/mapping/OutPort;->getColumnNumber()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_0
    if-ltz v1, :cond_7

    .line 1165
    iget-boolean v3, p0, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    if-nez v3, :cond_6

    if-ge v1, p4, :cond_4

    sub-int/2addr p4, v1

    goto :goto_1

    :cond_4
    if-gtz v0, :cond_5

    const/4 p4, 0x0

    goto :goto_1

    :cond_5
    sub-int/2addr v1, p4

    .line 1172
    rem-int/2addr v1, v0

    sub-int p4, v0, v1

    goto :goto_1

    :cond_6
    add-int v3, p4, v0

    add-int/2addr v1, p4

    .line 1176
    rem-int/2addr v1, v0

    sub-int p4, v3, v1

    goto :goto_1

    .line 1181
    :cond_7
    iget-boolean v0, p0, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 p4, 0x2

    :goto_1
    add-int/2addr p4, v2

    if-ltz p4, :cond_9

    .line 1184
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_9
    return p2
.end method
