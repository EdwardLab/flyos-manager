.class public Lgnu/kawa/functions/Format;
.super Lgnu/mapping/ProcedureN;
.source "Format.java"


# static fields
.field public static final format:Lgnu/kawa/functions/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lgnu/kawa/functions/Format;

    invoke-direct {v0}, Lgnu/kawa/functions/Format;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    const-string v1, "format"

    .line 13
    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Format;->setName(Ljava/lang/String;)V

    .line 14
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileMisc:validateApplyFormat"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Format;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method static drop2([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 142
    array-length v0, p0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 143
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 144
    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static varargs format([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 105
    aget-object v1, p0, v0

    .line 106
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 108
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    invoke-static {v0, p0, v3}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 109
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 111
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1

    .line 113
    invoke-static {v3, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_1
    instance-of v2, v1, Ljava/text/MessageFormat;

    if-nez v2, :cond_5

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-nez v2, :cond_5

    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    instance-of v0, v1, Ljava/io/Writer;

    if-eqz v0, :cond_3

    .line 127
    check-cast v1, Ljava/io/Writer;

    invoke-static {v1, p0, v3}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 128
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 130
    :cond_3
    instance-of v0, v1, Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    .line 132
    check-cast v1, Ljava/io/OutputStream;

    aget-object v0, p0, v3

    invoke-static {p0}, Lgnu/kawa/functions/Format;->drop2([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lgnu/kawa/functions/Format;->formatToOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 134
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 137
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "bad first argument to format"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_5
    :goto_0
    invoke-static {v0, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/io/Writer;[Ljava/lang/Object;I)V
    .locals 4

    add-int/lit8 v0, p2, 0x1

    .line 20
    aget-object p2, p1, p2

    .line 21
    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 22
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {p0, p2, v2}, Lgnu/kawa/functions/Format;->formatToWriter(Ljava/io/Writer;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static formatToFString(CLjava/lang/Object;[Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 2

    .line 75
    invoke-static {p1, p0}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object p0

    .line 76
    new-instance p1, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {p1}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0, p2, v0, p1, v1}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-virtual {p1}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object p0

    .line 86
    invoke-virtual {p1}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 87
    new-instance p1, Lgnu/lists/FString;

    invoke-direct {p1, p0}, Lgnu/lists/FString;-><init>([C)V

    return-object p1

    :catch_0
    move-exception p0

    .line 83
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs formatToOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .line 52
    new-instance v0, Lgnu/mapping/OutPort;

    invoke-direct {v0, p0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    const/4 p1, 0x2

    aput-object p2, p0, p1

    .line 53
    invoke-static {p0}, Lgnu/kawa/functions/Format;->format([Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->closeThis()V

    return-void
.end method

.method public static varargs formatToString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 59
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 60
    invoke-static {v0, p1, p0}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 61
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->close()V

    return-object p0
.end method

.method public static varargs formatToWriter(Ljava/io/Writer;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    .line 29
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p0

    .line 32
    :cond_0
    :try_start_0
    instance-of v0, p1, Ljava/text/MessageFormat;

    if-eqz v0, :cond_1

    .line 34
    check-cast p1, Ljava/text/MessageFormat;

    invoke-virtual {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    instance-of v0, p1, Lgnu/text/ReportFormat;

    if-nez v0, :cond_2

    .line 40
    sget-object v0, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    invoke-virtual {v0, p1}, Lgnu/kawa/functions/ParseFormat;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    :cond_2
    check-cast p1, Lgnu/text/ReportFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p0, v1}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-static {p1}, Lgnu/kawa/functions/Format;->format([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
