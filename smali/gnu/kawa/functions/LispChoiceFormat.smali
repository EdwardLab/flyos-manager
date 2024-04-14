.class Lgnu/kawa/functions/LispChoiceFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field choices:[Ljava/text/Format;

.field lastIsDefault:Z

.field param:I

.field skipIfFalse:Z

.field testBoolean:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1036
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1048
    iget-boolean v0, p0, Lgnu/kawa/functions/LispChoiceFormat;->testBoolean:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    aget-object v3, p1, p2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    aget-object v0, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1053
    :cond_1
    iget-boolean v0, p0, Lgnu/kawa/functions/LispChoiceFormat;->skipIfFalse:Z

    if-nez v0, :cond_6

    .line 1055
    iget v0, p0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    const/high16 v1, -0x60000000

    invoke-static {v0, v1, p1, p2}, Lgnu/kawa/functions/LispChoiceFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 1057
    iget v3, p0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    if-ne v3, v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    if-ltz v0, :cond_3

    .line 1058
    iget-object v1, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 1060
    :cond_3
    iget-boolean v0, p0, Lgnu/kawa/functions/LispChoiceFormat;->lastIsDefault:Z

    if-eqz v0, :cond_5

    .line 1061
    iget-object v0, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    array-length v0, v0

    sub-int/2addr v0, v2

    .line 1065
    :cond_4
    iget-object v1, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    aget-object v0, v1, v0

    goto :goto_1

    :cond_5
    return p2

    .line 1069
    :cond_6
    aget-object v0, p1, p2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_7

    add-int/2addr p2, v2

    return p2

    .line 1071
    :cond_7
    iget-object v0, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    aget-object v0, v0, v1

    .line 1073
    :goto_1
    invoke-static {v0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p1

    return p1
.end method
