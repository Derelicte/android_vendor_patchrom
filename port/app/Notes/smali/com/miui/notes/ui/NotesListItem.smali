.class public Lcom/miui/notes/ui/NotesListItem;
.super Landroid/widget/LinearLayout;
.source "NotesListItem.java"


# instance fields
.field private mAlert:Landroid/widget/ImageView;

.field private mCallName:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mItemData:Lcom/miui/notes/ui/NoteItemData;

.field private mTime:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const v0, 0x7f030007

    invoke-static {p1, v0, p0}, Lcom/miui/notes/ui/NotesListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    const v0, 0x7f0d0006

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTime:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    .line 31
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 32
    return-void
.end method

.method private setBackground(Lcom/miui/notes/ui/NoteItemData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getBgColorId()I

    move-result v0

    .line 87
    .local v0, id:I
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v1

    if-nez v1, :cond_5

    .line 88
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isSingle()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isOneFollowingFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getNoteBgSingleRes(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isLast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getNoteBgLastRes(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isFirst()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isMultiFollowingFolder()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    :cond_3
    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getNoteBgFirstRes(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 95
    :cond_4
    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getNoteBgNormalRes(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 98
    :cond_5
    invoke-static {}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getFolderBgRes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/miui/notes/ui/NoteItemData;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "data"
    .parameter "choiceMode"
    .parameter "checked"

    .prologue
    const v8, 0x7f090014

    const v7, 0x7f020014

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 35
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 42
    :goto_0
    iput-object p2, p0, Lcom/miui/notes/ui/NotesListItem;->mItemData:Lcom/miui/notes/ui/NoteItemData;

    .line 43
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0004

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 47
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09005e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListItem;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getNotesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getModifiedDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-direct {p0, p2}, Lcom/miui/notes/ui/NotesListItem;->setBackground(Lcom/miui/notes/ui/NoteItemData;)V

    .line 83
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getParentId()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getCallName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0005

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 54
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/notes/tool/DataUtils;->getFormattedSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0004

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 65
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 66
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListItem;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getNotesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/notes/tool/DataUtils;->getFormattedSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getItemData()Lcom/miui/notes/ui/NoteItemData;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mItemData:Lcom/miui/notes/ui/NoteItemData;

    return-object v0
.end method
