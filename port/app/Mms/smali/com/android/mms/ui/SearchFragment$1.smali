.class Lcom/android/mms/ui/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$1;->this$0:Lcom/android/mms/ui/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$1;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mContactMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/mms/ui/SearchFragment;->access$000(Lcom/android/mms/ui/SearchFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    return-void
.end method
