.class public Lgnu/kawa/lispexpr/ReadTable;
.super Lgnu/kawa/util/RangeTable;
.source "ReadTable.java"


# static fields
.field public static final CONSTITUENT:I = 0x2

.field public static final ILLEGAL:I = 0x0

.field public static final MULTIPLE_ESCAPE:I = 0x4

.field public static final NON_TERMINATING_MACRO:I = 0x6

.field public static final SINGLE_ESCAPE:I = 0x3

.field public static final TERMINATING_MACRO:I = 0x5

.field public static final WHITESPACE:I = 0x1

.field static final current:Lgnu/mapping/ThreadLocation;

.field public static defaultBracketMode:I = -0x1


# instance fields
.field ctorTable:Lgnu/mapping/Environment;

.field protected finalColonIsKeyword:Z

.field protected hexEscapeAfterBackslash:Z

.field protected initialColonIsKeyword:Z

.field public postfixLookupOperator:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "read-table"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lgnu/kawa/util/RangeTable;-><init>()V

    const v0, 0xffff

    .line 26
    iput-char v0, p0, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lgnu/kawa/lispexpr/ReadTable;->hexEscapeAfterBackslash:Z

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    return-void
.end method

.method public static createInitial()Lgnu/kawa/lispexpr/ReadTable;
    .locals 1

    .line 114
    new-instance v0, Lgnu/kawa/lispexpr/ReadTable;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReadTable;-><init>()V

    .line 115
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/ReadTable;->initialize()V

    return-object v0
.end method

.method public static getCurrent()Lgnu/kawa/lispexpr/ReadTable;
    .locals 3

    .line 195
    sget-object v0, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v1, :cond_1

    .line 198
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 199
    instance-of v2, v1, Lgnu/kawa/lispexpr/LispLanguage;

    if-eqz v2, :cond_0

    .line 200
    check-cast v1, Lgnu/kawa/lispexpr/LispLanguage;

    iget-object v1, v1, Lgnu/kawa/lispexpr/LispLanguage;->defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->createInitial()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v1

    .line 203
    :goto_0
    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public static setCurrent(Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 1

    .line 210
    sget-object v0, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getReaderCtor(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 190
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method initCtorTable()V
    .locals 1

    .line 159
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Lgnu/mapping/Environment;->make()Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 4

    .line 60
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getWhitespaceInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    const/16 v1, 0x20

    .line 61
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x9

    .line 62
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0xa

    .line 63
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0xd

    .line 64
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0xc

    .line 65
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 67
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getMultipleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 68
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getSingleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 69
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getDigitInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {p0, v1, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(IILjava/lang/Object;)V

    .line 70
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    .line 71
    invoke-virtual {p0, v1, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(IILjava/lang/Object;)V

    const/16 v1, 0x41

    const/16 v2, 0x5a

    .line 72
    invoke-virtual {p0, v1, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(IILjava/lang/Object;)V

    const/16 v1, 0x21

    .line 73
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x24

    .line 74
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x25

    .line 75
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x26

    .line 76
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x2a

    .line 77
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x2b

    .line 78
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x2d

    .line 79
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x2e

    .line 80
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x2f

    .line 81
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x3d

    .line 82
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x3e

    .line 83
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x3f

    .line 84
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v1, 0x40

    .line 85
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v2, 0x5e

    .line 86
    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v2, 0x5f

    .line 87
    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 88
    sget-object v2, Lgnu/kawa/lispexpr/ReadTableEntry;->brace:Lgnu/kawa/lispexpr/ReadTableEntry;

    const/16 v3, 0x7b

    invoke-virtual {p0, v3, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v2, 0x7e

    .line 89
    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v2, 0x7f

    .line 90
    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v2, 0x8

    .line 91
    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 92
    new-instance v0, Lgnu/kawa/lispexpr/ReaderColon;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderColon;-><init>()V

    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 93
    new-instance v0, Lgnu/kawa/lispexpr/ReaderString;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderString;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 94
    invoke-static {p0}, Lgnu/kawa/lispexpr/ReaderDispatch;->create(Lgnu/kawa/lispexpr/ReadTable;)Lgnu/kawa/lispexpr/ReaderDispatch;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 95
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    const/16 v0, 0x28

    const/16 v2, 0x29

    .line 96
    invoke-static {v0, v2}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 98
    new-instance v0, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v2, "quote"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0x27

    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 99
    new-instance v0, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v2, "quasiquote"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0x60

    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 100
    new-instance v0, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v2, "unquote"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "unquote-splicing"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;CLjava/lang/Object;)V

    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->setBracketMode()V

    return-void
.end method

.method public lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 4

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/lispexpr/ReadTableEntry;

    if-nez v1, :cond_5

    if-ltz p1, :cond_5

    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_5

    int-to-char v2, p1

    .line 218
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x30

    .line 219
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lgnu/kawa/lispexpr/ReadTableEntry;

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x61

    .line 221
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lgnu/kawa/lispexpr/ReadTableEntry;

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x41

    .line 223
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lgnu/kawa/lispexpr/ReadTableEntry;

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x20

    .line 225
    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lgnu/kawa/lispexpr/ReadTableEntry;

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    const/16 v0, 0x80

    if-lt p1, v0, :cond_4

    .line 228
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object p1

    move-object v1, p1

    :cond_4
    if-nez v1, :cond_5

    .line 230
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getIllegalInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method protected makeSymbol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 237
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 174
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putReaderCtor(Ljava/lang/String;Lgnu/mapping/Procedure;)V
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 167
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 182
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBracketMode()V
    .locals 1

    .line 151
    sget v0, Lgnu/kawa/lispexpr/ReadTable;->defaultBracketMode:I

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->setBracketMode(I)V

    return-void
.end method

.method public setBracketMode(I)V
    .locals 4

    const/16 v0, 0x3c

    const/16 v1, 0x5d

    const/16 v2, 0x5b

    if-gtz p1, :cond_0

    .line 130
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v3

    .line 131
    invoke-virtual {p0, v0, v3}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    if-gez p1, :cond_1

    .line 134
    invoke-virtual {p0, v2, v3}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 135
    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v3, Lgnu/kawa/lispexpr/ReaderTypespec;

    invoke-direct {v3}, Lgnu/kawa/lispexpr/ReaderTypespec;-><init>()V

    invoke-virtual {p0, v0, v3}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    if-ltz p1, :cond_2

    .line 142
    invoke-static {v2, v1}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 143
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/ReadTable;->remove(I)V

    :cond_2
    return-void
.end method

.method public setFinalColonIsKeyword(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lgnu/kawa/lispexpr/ReadTable;->finalColonIsKeyword:Z

    return-void
.end method

.method public setInitialColonIsKeyword(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lgnu/kawa/lispexpr/ReadTable;->initialColonIsKeyword:Z

    return-void
.end method
