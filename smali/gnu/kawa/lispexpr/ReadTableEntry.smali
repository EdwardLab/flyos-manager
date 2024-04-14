.class public abstract Lgnu/kawa/lispexpr/ReadTableEntry;
.super Ljava/lang/Object;
.source "ReadTableEntry.java"


# static fields
.field public static final brace:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final constituent:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final illegal:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final multipleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final singleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

.field public static final whitespace:Lgnu/kawa/lispexpr/ReadTableEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->illegal:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 12
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->whitespace:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 14
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->singleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 16
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->multipleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 18
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->constituent:Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 20
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMisc;

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->brace:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .line 34
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->constituent:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getDigitInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .line 32
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->constituent:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getIllegalInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->illegal:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getMultipleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .line 30
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->multipleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getSingleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .line 28
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->singleEscape:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public static getWhitespaceInstance()Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 1

    .line 26
    sget-object v0, Lgnu/kawa/lispexpr/ReadTableEntry;->whitespace:Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method


# virtual methods
.method public getKind()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 44
    new-instance p1, Ljava/lang/Error;

    const-string p2, "invalid character"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
