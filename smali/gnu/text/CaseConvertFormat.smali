.class public Lgnu/text/CaseConvertFormat;
.super Lgnu/text/ReportFormat;
.source "CaseConvertFormat.java"


# instance fields
.field baseFormat:Ljava/text/Format;

.field code:C


# direct methods
.method public constructor <init>(Ljava/text/Format;C)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 18
    iput-object p1, p0, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    .line 19
    iput-char p2, p0, Lgnu/text/CaseConvertFormat;->code:C

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

    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 29
    iget-object v1, p0, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    invoke-static {v1, p1, p2, v0, p4}, Lgnu/text/CaseConvertFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p1

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    const/16 p4, 0x20

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 35
    iget-char v3, p0, Lgnu/text/CaseConvertFormat;->code:C

    const/16 v4, 0x55

    if-ne v3, v4, :cond_0

    .line 36
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p4

    goto :goto_1

    :cond_0
    const/16 v4, 0x54

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v4, 0x43

    if-ne v3, v4, :cond_3

    .line 37
    invoke-static {p4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p4

    if-nez p4, :cond_3

    .line 39
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result p4

    goto :goto_1

    .line 41
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p4

    .line 43
    :goto_1
    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return p1
.end method

.method public getBaseFormat()Ljava/text/Format;
    .locals 1

    .line 22
    iget-object v0, p0, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    return-object v0
.end method

.method public setBaseFormat(Ljava/text/Format;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    return-void
.end method
