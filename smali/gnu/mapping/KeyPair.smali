.class public Lgnu/mapping/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"

# interfaces
.implements Lgnu/mapping/EnvironmentKey;


# instance fields
.field name:Lgnu/mapping/Symbol;

.field property:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    .line 16
    iput-object p2, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 35
    instance-of v0, p1, Lgnu/mapping/KeyPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    check-cast p1, Lgnu/mapping/KeyPair;

    .line 38
    iget-object v0, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    iget-object p1, p1, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 1

    .line 19
    iget-object v0, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 44
    iget-object v0, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    iget-object v1, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final matches(Lgnu/mapping/EnvironmentKey;)Z
    .locals 2

    .line 24
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-static {p1, v0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyPair[sym:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " prop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
