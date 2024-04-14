.class public Lgnu/text/CompoundFormat;
.super Lgnu/text/ReportFormat;
.source "CompoundFormat.java"


# instance fields
.field protected formats:[Ljava/text/Format;

.field protected length:I


# direct methods
.method public constructor <init>([Ljava/text/Format;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    .line 20
    array-length p1, p1

    iput p1, p0, Lgnu/text/CompoundFormat;->length:I

    return-void
.end method

.method public constructor <init>([Ljava/text/Format;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    .line 14
    iput p2, p0, Lgnu/text/CompoundFormat;->length:I

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

    const/4 v0, 0x0

    .line 26
    :goto_0
    iget v1, p0, Lgnu/text/CompoundFormat;->length:I

    if-ge v0, v1, :cond_3

    .line 28
    iget-object v1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    aget-object v1, v1, v0

    .line 29
    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_0

    .line 31
    check-cast v1, Lgnu/text/ReportFormat;

    invoke-virtual {v1, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p2

    if-gez p2, :cond_2

    return p2

    .line 35
    :cond_0
    array-length v2, p1

    if-lt p2, v2, :cond_1

    const-string v1, "#<missing format argument>"

    .line 36
    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    aget-object v3, p1, p2

    invoke-virtual {v1, v3, v2, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method public final format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 3

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget v1, p0, Lgnu/text/CompoundFormat;->length:I

    if-ge v0, v1, :cond_2

    .line 53
    iget-object v1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    aget-object v1, v1, v0

    .line 54
    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_0

    .line 56
    check-cast v1, Lgnu/text/ReportFormat;

    invoke-virtual {v1, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p2

    if-gez p2, :cond_1

    return p2

    .line 62
    :cond_0
    aget-object v2, p1, p2

    invoke-virtual {v1, v2, p3, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 71
    new-instance p1, Ljava/lang/Error;

    const-string p2, "CompoundFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CompoundFormat["

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 78
    :goto_0
    iget v2, p0, Lgnu/text/CompoundFormat;->length:I

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    iget-object v2, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
