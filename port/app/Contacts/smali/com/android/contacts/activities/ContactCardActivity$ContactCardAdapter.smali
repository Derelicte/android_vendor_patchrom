.class Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactCardAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/activities/ContactCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ContactCardActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 449
    iput-object p2, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->mContext:Landroid/content/Context;

    .line 450
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 451
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 468
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 473
    const/4 v2, 0x0

    .line 475
    .local v2, vh:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;
    if-nez p2, :cond_4

    .line 476
    iget-object v3, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040013

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 477
    new-instance v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;

    .end local v2           #vh:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;
    invoke-direct {v2, p0}, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;-><init>(Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;)V

    .line 478
    .restart local v2       #vh:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 480
    const v3, 0x7f070002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;->mData:Landroid/widget/TextView;

    .line 481
    const v3, 0x7f070061

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;->mType:Landroid/widget/TextView;

    .line 482
    const v3, 0x7f070062

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    .line 484
    iget-object v4, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #getter for: Lcom/android/contacts/activities/ContactCardActivity;->mAction:I
    invoke-static {v3}, Lcom/android/contacts/activities/ContactCardActivity;->access$500(Lcom/android/contacts/activities/ContactCardActivity;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 489
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 492
    .local v0, entryView:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    const/4 v1, 0x0

    .line 493
    .local v1, location:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v4, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    iget-object v3, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-static {v3, v4}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 498
    iget-object v3, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;->mType:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :goto_2
    iget-object v3, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 504
    iget-object v3, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;->mData:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #getter for: Lcom/android/contacts/activities/ContactCardActivity;->mAction:I
    invoke-static {v3}, Lcom/android/contacts/activities/ContactCardActivity;->access$500(Lcom/android/contacts/activities/ContactCardActivity;)I

    move-result v3

    if-nez v3, :cond_2

    .line 508
    iget-object v3, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean v4, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 510
    :cond_2
    return-object p2

    .line 484
    .end local v0           #entryView:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v1           #location:Ljava/lang/String;
    :cond_3
    const/16 v3, 0x8

    goto :goto_0

    .line 486
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #vh:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;
    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;

    .restart local v2       #vh:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;
    goto :goto_1

    .line 500
    .restart local v0       #entryView:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .restart local v1       #location:Ljava/lang/String;
    :cond_5
    iget-object v3, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;->mType:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
