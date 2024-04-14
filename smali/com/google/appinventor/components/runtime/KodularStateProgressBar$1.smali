.class final Lcom/google/appinventor/components/runtime/KodularStateProgressBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kofigyan/stateprogressbar/listeners/OnStateItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularStateProgressBar;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStateProgressBar;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularStateProgressBar;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStateProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateItemClick(Lcom/kofigyan/stateprogressbar/StateProgressBar;Lcom/kofigyan/stateprogressbar/components/StateItem;IZ)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStateProgressBar;

    invoke-virtual {p1, p3, p4}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateItemClick(IZ)V

    return-void
.end method
