.class Lgnu/kawa/functions/LispEscapeFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# static fields
.field public static final ESCAPE_ALL:I = 0xf2

.field public static final ESCAPE_NORMAL:I = 0xf1

.field public static final alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;


# instance fields
.field escapeAll:Z

.field param1:I

.field param2:I

.field param3:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 785
    new-instance v0, Lgnu/kawa/functions/LispEscapeFormat;

    const/4 v1, 0x0

    const/high16 v2, -0x40000000    # -2.0f

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/LispEscapeFormat;-><init>(II)V

    sput-object v0, Lgnu/kawa/functions/LispEscapeFormat;->alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 789
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 790
    iput p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 791
    iput p2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    const/high16 p1, -0x40000000    # -2.0f

    .line 792
    iput p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 796
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 797
    iput p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 798
    iput p2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    .line 799
    iput p3, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    return-void
.end method

.method static getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 2

    const/high16 v0, -0x50000000

    if-ne p0, v0, :cond_0

    .line 805
    array-length p0, p1

    sub-int/2addr p0, p2

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, -0x60000000

    if-ne p0, v0, :cond_7

    .line 808
    aget-object p0, p1, p2

    .line 809
    instance-of p1, p0, Lgnu/math/Numeric;

    if-eqz p1, :cond_1

    .line 810
    check-cast p0, Lgnu/math/Numeric;

    return-object p0

    .line 811
    :cond_1
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_4

    .line 813
    instance-of p1, p0, Ljava/lang/Float;

    if-nez p1, :cond_3

    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 815
    :cond_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 814
    :cond_3
    :goto_0
    new-instance p1, Lgnu/math/DFloNum;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lgnu/math/DFloNum;-><init>(D)V

    return-object p1

    .line 817
    :cond_4
    instance-of p1, p0, Lgnu/text/Char;

    if-eqz p1, :cond_5

    .line 818
    new-instance p1, Lgnu/math/IntNum;

    check-cast p0, Lgnu/text/Char;

    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Lgnu/math/IntNum;-><init>(I)V

    return-object p1

    .line 819
    :cond_5
    instance-of p1, p0, Ljava/lang/Character;

    if-eqz p1, :cond_6

    .line 820
    new-instance p1, Lgnu/math/IntNum;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-direct {p1, p0}, Lgnu/math/IntNum;-><init>(I)V

    return-object p1

    .line 821
    :cond_6
    new-instance p0, Lgnu/math/DFloNum;

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {p0, p1, p2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object p0

    .line 823
    :cond_7
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    iget p3, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    const/4 p4, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    const/4 v1, 0x1

    if-ne p3, v0, :cond_1

    .line 837
    array-length p1, p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 838
    :cond_1
    iget v2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v2, v0, :cond_2

    if-nez p3, :cond_2

    goto :goto_0

    .line 842
    :cond_2
    invoke-static {p3, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p3

    .line 843
    iget v2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    const/high16 v3, -0x60000000

    if-ne v2, v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 844
    :cond_3
    iget v2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v2, v0, :cond_4

    .line 846
    invoke-virtual {p3}, Lgnu/math/Numeric;->isZero()Z

    move-result v1

    goto :goto_0

    .line 850
    :cond_4
    invoke-static {v2, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v2

    .line 851
    iget v4, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v4, v3, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 852
    :cond_5
    iget v4, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    if-ne v4, v0, :cond_6

    .line 854
    invoke-virtual {p3, v2}, Lgnu/math/Numeric;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 858
    :cond_6
    invoke-static {v4, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p1

    .line 859
    iget v0, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    if-ne v0, v3, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 860
    :cond_7
    invoke-virtual {v2, p3}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, v2}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    if-nez v1, :cond_8

    goto :goto_1

    .line 864
    :cond_8
    iget-boolean p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->escapeAll:Z

    if-eqz p1, :cond_9

    const/16 p4, 0xf2

    goto :goto_1

    :cond_9
    const/16 p4, 0xf1

    :goto_1
    invoke-static {p4, p2}, Lgnu/kawa/functions/LispEscapeFormat;->result(II)I

    move-result p1

    return p1
.end method
