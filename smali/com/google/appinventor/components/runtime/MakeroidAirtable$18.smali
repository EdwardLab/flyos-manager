.class final Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidAirtable;->Column(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

.field private synthetic nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

.field private synthetic oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/List;

.field private synthetic vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/List;

.field private synthetic yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidAirtable;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/List;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Ljava/util/List;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/util/List;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Ljava/util/List;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$18;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidAirtable;->GotColumn(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
