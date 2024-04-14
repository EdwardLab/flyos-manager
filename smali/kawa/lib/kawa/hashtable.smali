.class public Lkawa/lib/kawa/hashtable;
.super Lgnu/expr/ModuleBody;
.source "hashtable.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/lib/kawa/hashtable$HashTable;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nhashtable.scm\nScheme\n*S Scheme\n*F\n+ 1 hashtable.scm\n/u2/home/jis/ai2-kawa/kawa/lib/kawa/hashtable.scm\n*L\n1#1,90:1\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$do:Lgnu/mapping/Location;

.field public static final $Prvt$hashnode:Ljava/lang/Class;

.field public static final $Prvt$let$St:Lgnu/mapping/Location;

.field public static final $instance:Lkawa/lib/kawa/hashtable;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field public static final hashtable:Ljava/lang/Class;

.field public static final hashtable$Mncheck$Mnmutable:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-check-mutable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "mutable"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/hashtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    const-class v1, Lgnu/kawa/util/HashNode;

    sput-object v1, Lkawa/lib/kawa/hashtable;->$Prvt$hashnode:Ljava/lang/Class;

    new-instance v1, Lkawa/lib/kawa/hashtable;

    invoke-direct {v1}, Lkawa/lib/kawa/hashtable;-><init>()V

    sput-object v1, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    const-string v2, "kawa.lib.std_syntax"

    const-string v3, "let$St"

    .line 4
    invoke-static {v2, v3}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v3

    sput-object v3, Lkawa/lib/kawa/hashtable;->$Prvt$let$St:Lgnu/mapping/Location;

    const-string v3, "do"

    invoke-static {v2, v3}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v2

    sput-object v2, Lkawa/lib/kawa/hashtable;->$Prvt$do:Lgnu/mapping/Location;

    const-class v2, Lkawa/lib/kawa/hashtable$HashTable;

    sput-object v2, Lkawa/lib/kawa/hashtable;->hashtable:Ljava/lang/Class;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-direct {v2, v1, v3, v0, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/kawa/hashtable;->hashtable$Mncheck$Mnmutable:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 1

    .line 89
    iget-boolean p0, p0, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "cannot modify non-mutable hashtable"

    .line 90
    invoke-static {v0, p0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-check-mutable"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 88
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    const p1, -0xbffff

    return p1

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
