.class public Lgnu/kawa/functions/ObjectFormat;
.super Lgnu/text/ReportFormat;
.source "ObjectFormat.java"


# static fields
.field private static plainFormat:Lgnu/kawa/functions/ObjectFormat;

.field private static readableFormat:Lgnu/kawa/functions/ObjectFormat;


# instance fields
.field maxChars:I

.field readable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 39
    iput-boolean p1, p0, Lgnu/kawa/functions/ObjectFormat;->readable:Z

    const/high16 p1, -0x40000000    # -2.0f

    .line 40
    iput p1, p0, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 45
    iput-boolean p1, p0, Lgnu/kawa/functions/ObjectFormat;->readable:Z

    .line 46
    iput p2, p0, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    return-void
.end method

.method public static format([Ljava/lang/Object;ILjava/io/Writer;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    array-length v0, p0

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    const/4 p4, 0x0

    const/4 p3, -0x1

    const-string p0, "#<missing format argument>"

    goto :goto_0

    .line 130
    :cond_0
    aget-object p0, p0, p1

    .line 131
    :goto_0
    invoke-static {p0, p2, p3, p4}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-gez p2, :cond_0

    .line 85
    instance-of v1, p1, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    .line 87
    check-cast p1, Lgnu/mapping/OutPort;

    invoke-static {p0, p1, p3}, Lgnu/kawa/functions/ObjectFormat;->print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V

    return v0

    :cond_0
    if-gez p2, :cond_1

    .line 90
    instance-of v1, p1, Ljava/io/CharArrayWriter;

    if-eqz v1, :cond_1

    .line 92
    new-instance p2, Lgnu/mapping/OutPort;

    invoke-direct {p2, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 93
    invoke-static {p0, p2, p3}, Lgnu/kawa/functions/ObjectFormat;->print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V

    .line 94
    invoke-virtual {p2}, Lgnu/mapping/OutPort;->close()V

    return v0

    .line 99
    :cond_1
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 100
    new-instance v2, Lgnu/mapping/OutPort;

    invoke-direct {v2, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 101
    invoke-static {p0, v2, p3}, Lgnu/kawa/functions/ObjectFormat;->print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V

    .line 102
    invoke-virtual {v2}, Lgnu/mapping/OutPort;->close()V

    .line 103
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->size()I

    move-result p0

    if-ltz p2, :cond_3

    if-gt p0, p2, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p3, p2}, Ljava/io/Writer;->write([CII)V

    return p3

    .line 106
    :cond_3
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/CharArrayWriter;->writeTo(Ljava/io/Writer;)V

    return v0
.end method

.method public static getInstance(Z)Lgnu/kawa/functions/ObjectFormat;
    .locals 1

    if-eqz p0, :cond_1

    .line 25
    sget-object p0, Lgnu/kawa/functions/ObjectFormat;->readableFormat:Lgnu/kawa/functions/ObjectFormat;

    if-nez p0, :cond_0

    .line 26
    new-instance p0, Lgnu/kawa/functions/ObjectFormat;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    sput-object p0, Lgnu/kawa/functions/ObjectFormat;->readableFormat:Lgnu/kawa/functions/ObjectFormat;

    .line 27
    :cond_0
    sget-object p0, Lgnu/kawa/functions/ObjectFormat;->readableFormat:Lgnu/kawa/functions/ObjectFormat;

    return-object p0

    .line 31
    :cond_1
    sget-object p0, Lgnu/kawa/functions/ObjectFormat;->plainFormat:Lgnu/kawa/functions/ObjectFormat;

    if-nez p0, :cond_2

    .line 32
    new-instance p0, Lgnu/kawa/functions/ObjectFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    sput-object p0, Lgnu/kawa/functions/ObjectFormat;->plainFormat:Lgnu/kawa/functions/ObjectFormat;

    .line 33
    :cond_2
    sget-object p0, Lgnu/kawa/functions/ObjectFormat;->plainFormat:Lgnu/kawa/functions/ObjectFormat;

    return-object p0
.end method

.method private static print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V
    .locals 2

    .line 60
    iget-boolean v0, p1, Lgnu/mapping/OutPort;->printReadable:Z

    .line 61
    iget-object v1, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 64
    :try_start_0
    iput-boolean p2, p1, Lgnu/mapping/OutPort;->printReadable:Z

    if-eqz p2, :cond_0

    .line 65
    sget-object p2, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0

    :cond_0
    sget-object p2, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    .line 67
    :goto_0
    iput-object p2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 68
    invoke-virtual {p2, p0, p1}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iput-boolean v0, p1, Lgnu/mapping/OutPort;->printReadable:Z

    .line 73
    iput-object v1, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    return-void

    :catchall_0
    move-exception p0

    .line 72
    iput-boolean v0, p1, Lgnu/mapping/OutPort;->printReadable:Z

    .line 73
    iput-object v1, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw p0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget p4, p0, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    const/4 v0, -0x1

    invoke-static {p4, v0, p1, p2}, Lgnu/kawa/functions/ObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result p4

    .line 53
    iget v0, p0, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    const/high16 v1, -0x60000000

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 54
    :cond_0
    iget-boolean v0, p0, Lgnu/kawa/functions/ObjectFormat;->readable:Z

    invoke-static {p1, p2, p3, p4, v0}, Lgnu/kawa/functions/ObjectFormat;->format([Ljava/lang/Object;ILjava/io/Writer;IZ)I

    move-result p1

    return p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 137
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ObjectFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
