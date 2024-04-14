.class Lgnu/kawa/functions/LispPluralFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field backup:Z

.field y:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(ZZ)Lgnu/kawa/functions/LispPluralFormat;
    .locals 1

    .line 571
    new-instance v0, Lgnu/kawa/functions/LispPluralFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispPluralFormat;-><init>()V

    .line 572
    iput-boolean p0, v0, Lgnu/kawa/functions/LispPluralFormat;->backup:Z

    .line 573
    iput-boolean p1, v0, Lgnu/kawa/functions/LispPluralFormat;->y:Z

    return-object v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-boolean p4, p0, Lgnu/kawa/functions/LispPluralFormat;->backup:Z

    if-eqz p4, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    add-int/lit8 p4, p2, 0x1

    .line 583
    aget-object p1, p1, p2

    .line 584
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object p2

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 585
    :goto_0
    iget-boolean p2, p0, Lgnu/kawa/functions/LispPluralFormat;->y:Z

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "ies"

    goto :goto_1

    :cond_2
    const-string p1, "y"

    .line 586
    :goto_1
    invoke-static {p3, p1}, Lgnu/kawa/functions/LispPluralFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/16 p1, 0x73

    .line 588
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    :cond_4
    :goto_2
    return p4
.end method
