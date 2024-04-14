.class public Lgnu/text/LiteralFormat;
.super Lgnu/text/ReportFormat;
.source "LiteralFormat.java"


# instance fields
.field text:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lgnu/text/LiteralFormat;->text:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 22
    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/LiteralFormat;->text:[C

    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 11
    iput-object p1, p0, Lgnu/text/LiteralFormat;->text:[C

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/LiteralFormat;->text:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object p1, p0, Lgnu/text/LiteralFormat;->text:[C

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write([C)V

    return p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 35
    new-instance p1, Ljava/lang/Error;

    const-string p2, "LiteralFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "LiteralFormat[\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lgnu/text/LiteralFormat;->text:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\"]"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
