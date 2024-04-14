.class public Lgnu/kawa/slib/readtable;
.super Lgnu/expr/ModuleBody;
.source "readtable.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nreadtable.scm\nScheme\n*S Scheme\n*F\n+ 1 readtable.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/readtable.scm\n*L\n1#1,83:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/readtable;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field public static final current$Mnreadtable:Lgnu/expr/ModuleMethod;

.field public static final define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

.field public static final get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

.field public static final make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final readtable$Qu:Lgnu/expr/ModuleMethod;

.field public static final set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "define-reader-ctor"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "get-dispatch-macro-table"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "set-dispatch-macro-character"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "make-dispatch-macro-character"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "set-macro-character"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "readtable?"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "current-readtable"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/kawa/slib/readtable;

    invoke-direct {v7}, Lgnu/kawa/slib/readtable;-><init>()V

    sput-object v7, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    new-instance v8, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v6, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lgnu/kawa/slib/readtable;->current$Mnreadtable:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v8, 0x2

    const/16 v9, 0x1001

    invoke-direct {v6, v7, v8, v5, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lgnu/kawa/slib/readtable;->readtable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x3

    const/16 v8, 0x4002

    invoke-direct {v5, v7, v6, v4, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lgnu/kawa/slib/readtable;->set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x6

    const/16 v6, 0x3001

    invoke-direct {v4, v7, v5, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/readtable;->make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x9

    const/16 v5, 0x4003

    invoke-direct {v3, v7, v4, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/readtable;->set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xb

    const/16 v4, 0x3002

    invoke-direct {v2, v7, v3, v1, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/readtable;->get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    invoke-direct {v1, v7, v2, v0, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/readtable;->define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

    invoke-virtual {v7}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static currentReadtable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 1

    .line 2
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    return-object v0
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0, p1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/mapping/Procedure;)V

    return-void
.end method

.method public static getDispatchMacroTable(CC)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 2

    .line 78
    invoke-virtual {p2, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object p0

    :try_start_0
    check-cast p0, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object p0

    if-nez p0, :cond_0

    .line 80
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v0, -0x2

    const-string v1, "disp-entry"

    invoke-direct {p2, p1, v1, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public static isReadtable(Ljava/lang/Object;)Z
    .locals 0

    .line 6
    instance-of p0, p0, Lgnu/kawa/lispexpr/ReadTable;

    return p0
.end method

.method public static makeDispatchMacroCharacter(C)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZ)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V
    .locals 1

    .line 62
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatch;

    invoke-direct {v0, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;-><init>(Z)V

    invoke-virtual {p2, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 1

    .line 70
    invoke-virtual {p3, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object p0

    :try_start_0
    check-cast p0, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    new-instance p3, Lgnu/kawa/lispexpr/ReaderDispatchMacro;

    :try_start_1
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-direct {p3, p2}, Lgnu/kawa/lispexpr/ReaderDispatchMacro;-><init>(Lgnu/mapping/Procedure;)V

    invoke-virtual {p0, p1, p3}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    .line 72
    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p3, 0x1

    const-string v0, "gnu.kawa.lispexpr.ReaderDispatchMacro.<init>(gnu.mapping.Procedure)"

    invoke-direct {p1, p0, v0, p3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p1

    .line 70
    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, -0x2

    const-string v0, "entry"

    invoke-direct {p2, p1, v0, p3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public static setMacroCharacter(CLjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V
    .locals 1

    .line 30
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMacro;

    :try_start_0
    check-cast p1, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v0, p1, p2}, Lgnu/kawa/lispexpr/ReaderMacro;-><init>(Lgnu/mapping/Procedure;Z)V

    invoke-virtual {p3, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    .line 31
    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x1

    const-string v0, "gnu.kawa.lispexpr.ReaderMacro.<init>(gnu.mapping.Procedure,boolean)"

    invoke-direct {p2, p0, v0, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 57
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(C)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    .line 58
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "make-dispatch-macro-character"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 5
    :cond_1
    invoke-static {p2}, Lgnu/kawa/slib/readtable;->isReadtable(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "define-reader-ctor"

    const-string v1, "get-dispatch-macro-table"

    const-string v2, "make-dispatch-macro-character"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x6

    const/4 v6, 0x2

    if-eq v3, v4, :cond_2

    const/16 v2, 0xb

    if-eq v3, v2, :cond_1

    const/16 v1, 0xd

    if-eq v3, v1, :cond_0

    .line 82
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 74
    :cond_1
    :try_start_2
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p1, p2}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CC)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 75
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 57
    :cond_2
    :try_start_4
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    if-eq p3, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-static {p1, v5}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_4
    move-exception p1

    .line 60
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p1

    .line 58
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :cond_4
    :try_start_6
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p1, p3}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_6
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "set-macro-character"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "set-dispatch-macro-character"

    const-string v1, "set-macro-character"

    const-string v2, "define-reader-ctor"

    const-string v3, "get-dispatch-macro-table"

    const-string v4, "make-dispatch-macro-character"

    iget v5, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v5, v7, :cond_5

    const/4 v1, 0x6

    const/4 v9, 0x2

    if-eq v5, v1, :cond_3

    const/16 v1, 0x9

    if-eq v5, v1, :cond_2

    const/16 v0, 0xb

    if-eq v5, v0, :cond_1

    const/16 v0, 0xd

    if-eq v5, v0, :cond_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    .line 83
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 82
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v9, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v8, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 74
    :cond_1
    :try_start_3
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3

    invoke-static {p1, p2, p4}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    .line 76
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_4
    move-exception p1

    .line 75
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v9, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v3, v8, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 65
    :cond_2
    :try_start_6
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_6

    invoke-static {p1, p2, p4}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_6
    move-exception p1

    .line 66
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v9, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_7
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v8, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 57
    :cond_3
    :try_start_8
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_a

    :try_start_9
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    if-eq p3, p2, :cond_4

    const/4 v6, 0x1

    :cond_4
    :try_start_a
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_8

    invoke-static {p1, v6, p4}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_8
    move-exception p1

    .line 61
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_9
    move-exception p1

    .line 60
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v9, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_a
    move-exception p1

    .line 58
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v4, v8, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :cond_5
    :try_start_b
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_c

    :try_start_c
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_b

    if-eq p4, p2, :cond_6

    const/4 v6, 0x1

    :cond_6
    invoke-static {p1, p3, v6}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_b
    move-exception p1

    .line 28
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_c
    move-exception p1

    .line 25
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v8, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "set-dispatch-macro-character"

    const-string v1, "set-macro-character"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v4, :cond_1

    const/16 v1, 0x9

    if-eq v2, v1, :cond_0

    .line 65
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {p1, p2, p4, p5}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    .line 68
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 66
    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :cond_1
    :try_start_3
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    if-eq p4, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    :try_start_5
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3

    invoke-static {p1, p3, v5, p5}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_3
    move-exception p1

    .line 29
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_4
    move-exception p1

    .line 28
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p1

    .line 25
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 57
    :cond_0
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_1

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1
    const p1, -0xbffff

    return p1

    .line 5
    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, -0xbffff

    if-eq v0, v1, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    const v5, -0xbfffe

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 82
    :cond_0
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    return v4

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_2

    return v5

    :cond_2
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 74
    :cond_3
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_5

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_4

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_4
    return v5

    :cond_5
    return v4

    .line 57
    :cond_6
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_7

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_7
    return v4

    .line 25
    :cond_8
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_9

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_9
    return v4
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const v2, -0xbffff

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e

    const/4 v4, 0x6

    const v5, -0xbfffd

    if-eq v0, v4, :cond_b

    const/16 v4, 0x9

    const v6, -0xbfffe

    if-eq v0, v4, :cond_8

    const/16 v4, 0xb

    if-eq v0, v4, :cond_4

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    .line 25
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 82
    :cond_0
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_2

    return v6

    :cond_2
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_3

    return v5

    :cond_3
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 74
    :cond_4
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_7

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_6

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_5

    return v5

    :cond_5
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_6
    return v6

    :cond_7
    return v2

    .line 65
    :cond_8
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_a

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_9

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_9
    return v6

    :cond_a
    return v2

    .line 57
    :cond_b
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_d

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_c

    return v5

    :cond_c
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_d
    return v2

    .line 25
    :cond_e
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_f

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_f
    return v2
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    const v2, -0xbfffc

    const/4 v3, 0x0

    const/4 v4, 0x4

    const v5, -0xbffff

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 25
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 65
    :cond_0
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_3

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_2

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of p2, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_1

    return v2

    :cond_1
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p6, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_2
    const p1, -0xbfffe

    return p1

    :cond_3
    return v5

    .line 25
    :cond_4
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_6

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of p2, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_5

    return v2

    :cond_5
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p6, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_6
    return v5
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
