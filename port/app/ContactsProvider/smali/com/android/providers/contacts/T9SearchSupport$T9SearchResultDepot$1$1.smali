.class Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1$1;
.super Landroid/os/Handler;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1$1;->this$1:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1076
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1$1;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1$1;->this$1:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->reload()V

    .line 1081
    :cond_0
    return-void
.end method
