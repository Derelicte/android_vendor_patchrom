.class Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/BackScrollManager$ScrollableHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mControls:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mPhoto:Landroid/view/View;

.field private mSeparator:Landroid/view/View;

.field final synthetic this$1:Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;)V
    .locals 2
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mControls:Landroid/view/View;

    .line 505
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mPhoto:Landroid/view/View;

    .line 506
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mHeader:Landroid/view/View;

    .line 507
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mSeparator:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getMaximumScrollableHeaderOffset()I
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mPhoto:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 523
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mPhoto:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mSeparator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;->mControls:Landroid/view/View;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 512
    return-void
.end method
