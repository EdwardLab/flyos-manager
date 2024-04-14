.class Lgnu/kawa/functions/LispCharacterFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field charVal:I

.field count:I

.field seenAt:Z

.field seenColon:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 598
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;
    .locals 1

    .line 608
    new-instance v0, Lgnu/kawa/functions/LispCharacterFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispCharacterFormat;-><init>()V

    .line 609
    iput p1, v0, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    .line 610
    iput p0, v0, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    .line 611
    iput-boolean p2, v0, Lgnu/kawa/functions/LispCharacterFormat;->seenAt:Z

    .line 612
    iput-boolean p3, v0, Lgnu/kawa/functions/LispCharacterFormat;->seenColon:Z

    return-object v0
.end method

.method public static printChar(IZZLjava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 635
    invoke-static {p0}, Lgnu/text/Char;->toScmReadableString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    const/16 p1, 0x20

    if-ge p0, p1, :cond_1

    const/16 p1, 0x5e

    .line 641
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p0, p0, 0x40

    .line 642
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x7f

    if-lt p0, p1, :cond_2

    const-string p1, "#\\x"

    .line 646
    invoke-static {p3, p1}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    const/16 p1, 0x10

    .line 647
    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_2
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 655
    :cond_3
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    iget p4, p0, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    const/4 v0, 0x1

    invoke-static {p4, v0, p1, p2}, Lgnu/kawa/functions/LispCharacterFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result p4

    .line 621
    iget v0, p0, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    const/high16 v1, -0x60000000

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 622
    :cond_0
    iget v0, p0, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    const/16 v2, 0x3f

    invoke-static {v0, v2, p1, p2}, Lgnu/kawa/functions/LispCharacterFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result p1

    .line 623
    iget v0, p0, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_2

    .line 625
    iget-boolean v0, p0, Lgnu/kawa/functions/LispCharacterFormat;->seenAt:Z

    iget-boolean v1, p0, Lgnu/kawa/functions/LispCharacterFormat;->seenColon:Z

    invoke-static {p1, v0, v1, p3}, Lgnu/kawa/functions/LispCharacterFormat;->printChar(IZZLjava/io/Writer;)V

    goto :goto_0

    :cond_2
    return p2
.end method
