.class public Lgnu/kawa/functions/SetNamedPart;
.super Lgnu/mapping/Procedure3;
.source "SetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# static fields
.field public static final setNamedPart:Lgnu/kawa/functions/SetNamedPart;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lgnu/kawa/functions/SetNamedPart;

    invoke-direct {v0}, Lgnu/kawa/functions/SetNamedPart;-><init>()V

    sput-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    const-string v1, "setNamedPart"

    .line 12
    invoke-virtual {v0, v1}, Lgnu/kawa/functions/SetNamedPart;->setName(Ljava/lang/String;)V

    .line 13
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileNamedPart:validateSetNamedPart"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/SetNamedPart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/mapping/Procedure3;-><init>()V

    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 23
    instance-of v0, p1, Lgnu/mapping/Namespace;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Lgnu/mapping/Namespace;

    .line 26
    invoke-virtual {p1}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class:"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x6

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 32
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    .line 33
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 34
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 37
    :cond_1
    :goto_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 38
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    .line 39
    :cond_2
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_3

    .line 43
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lgnu/kawa/reflect/SlotSet;->setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 52
    :catchall_0
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method
