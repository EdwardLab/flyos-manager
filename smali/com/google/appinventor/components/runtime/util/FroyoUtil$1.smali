.class final Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FroyoUtil;->setAudioFocusChangeListener(Lcom/google/appinventor/components/runtime/Player;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Player;

.field private vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Player;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:Z

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Player;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne p1, v0, :cond_3

    .line 57
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Player;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Player;->Start()V

    .line 58
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:Z

    goto :goto_0

    .line 51
    :cond_1
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:Z

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Player;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Player;->OtherPlayerStarted()V

    return-void

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Player;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne p1, v0, :cond_3

    .line 45
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Player;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Player;->pause()V

    .line 46
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->vvjaKRMN9H6lYkjQrf39wC72L2per26vSgUw9e5mZIMwW4gwULkxbiBNnCPVkUrj:Z

    :cond_3
    :goto_0
    return-void
.end method
