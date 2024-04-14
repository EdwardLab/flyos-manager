.class public abstract Lgnu/mapping/Location;
.super Ljava/lang/Object;
.source "Location.java"


# static fields
.field public static final UNBOUND:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/String;

    const-string v1, "(unbound)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;
    .locals 2

    .line 168
    new-instance v0, Lgnu/mapping/PlainLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 169
    iput-object v1, v0, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    .line 170
    sget-object p0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object p0, v0, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public static make(Ljava/lang/String;)Lgnu/mapping/IndirectableLocation;
    .locals 2

    .line 159
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    .line 160
    new-instance v0, Lgnu/mapping/PlainLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 161
    iput-object v1, v0, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    .line 162
    sget-object p0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object p0, v0, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Location;
    .locals 1

    .line 151
    new-instance v0, Lgnu/mapping/ThreadLocation;

    invoke-direct {v0, p1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public entered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 64
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    return-object v1

    .line 67
    :cond_0
    new-instance v0, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v0, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Lgnu/mapping/Location;)V

    throw v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public getBase()Lgnu/mapping/Location;
    .locals 0

    return-object p0
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .line 98
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "#<location "

    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 136
    :cond_0
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    const-string v0, " -> "

    .line 140
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "(unbound)"

    .line 144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x3e

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public abstract set(Ljava/lang/Object;)V
.end method

.method public setRestore(Ljava/lang/Object;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    invoke-virtual {p0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 83
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-virtual {p0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {p0}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    const/16 v2, 0x5b

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {p0}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, p0, :cond_0

    const/16 v2, 0x2f

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "]"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undefine()V
    .locals 1

    .line 75
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-void
.end method
