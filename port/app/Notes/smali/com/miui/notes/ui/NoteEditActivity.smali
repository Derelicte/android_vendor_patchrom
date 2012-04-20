.class public Lcom/miui/notes/ui/NoteEditActivity;
.super Landroid/app/Activity;
.source "NoteEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;
.implements Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;
    }
.end annotation


# static fields
.field public static final TAG_CHECKED:Ljava/lang/String;

.field public static final TAG_UNCHECKED:Ljava/lang/String;

.field private static final sBgSelectorBtnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBgSelectorSelectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFontSelectorSelectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFontSizeBtnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEditTextList:Landroid/widget/LinearLayout;

.field private mFontSizeId:I

.field private mFontSizeSelector:Landroid/view/View;

.field private mHeadViewPanel:Landroid/view/View;

.field private mNoteBgColorSelector:Landroid/view/View;

.field private mNoteEditor:Landroid/widget/EditText;

.field private mNoteEditorPanel:Landroid/view/View;

.field private mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mUserQuery:Ljava/lang/String;

.field private mWorkingNote:Lcom/miui/notes/model/WorkingNote;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    .line 75
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0d000d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0d0015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0d000f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0d0013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0d0011

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    .line 84
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d000e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    .line 93
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    const v1, 0x7f0d001c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    const v1, 0x7f0d0018

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    const v1, 0x7f0d001a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    const v1, 0x7f0d001e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    .line 101
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/16 v0, 0x221a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    .line 131
    const/16 v0, 0x25a1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/miui/notes/ui/NoteEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->deleteCurrentNote()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/notes/ui/NoteEditActivity;)Lcom/miui/notes/model/WorkingNote;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    return-object v0
.end method

.method private clearSettingState()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 493
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :goto_0
    return v0

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 500
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNewNote()V
    .locals 4

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 612
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 613
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v1, "com.miui.notes.folder_id"

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getFolderId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 616
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 617
    return-void
.end method

.method private deleteCurrentNote()V
    .locals 5

    .prologue
    .line 620
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 622
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v1

    .line 623
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 624
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 628
    :goto_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->isSyncMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/notes/tool/DataUtils;->batchDeleteNotes(Landroid/content/ContentResolver;Ljava/util/HashSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    const-string v0, "NoteEditActivity"

    const-string v1, "Delete Note error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/notes/model/WorkingNote;->markDeleted(Z)V

    .line 639
    return-void

    .line 626
    :cond_1
    const-string v1, "NoteEditActivity"

    const-string v2, "Wrong note id, should not happen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, -0x3

    invoke-static {v1, v0, v2, v3}, Lcom/miui/notes/tool/DataUtils;->batchMoveToFolder(Landroid/content/ContentResolver;Ljava/util/HashSet;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const-string v0, "NoteEditActivity"

    const-string v1, "Move notes to trash folder error, should not happens"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getHighlightQueryResult(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 762
    new-instance v1, Landroid/text/SpannableString;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 763
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mPattern:Ljava/util/regex/Pattern;

    .line 765
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 766
    const/4 v0, 0x0

    .line 767
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 772
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_1

    :cond_0
    move-object v0, p1

    .line 762
    goto :goto_0

    .line 775
    :cond_1
    return-object v1
.end method

.method private getListItem(Ljava/lang/String;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 779
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 780
    const v0, 0x7f0d0021

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/ui/NoteEditText;

    .line 781
    iget v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v1}, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->getTexAppearanceResource(I)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/notes/ui/NoteEditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 782
    const v1, 0x7f0d0020

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 783
    new-instance v3, Lcom/miui/notes/ui/NoteEditActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/miui/notes/ui/NoteEditActivity$3;-><init>(Lcom/miui/notes/ui/NoteEditActivity;Lcom/miui/notes/ui/NoteEditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 794
    sget-object v3, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 795
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 796
    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setPaintFlags(I)V

    .line 797
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 804
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/notes/ui/NoteEditText;->setOnTextViewChangeListener(Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;)V

    .line 805
    invoke-virtual {v0, p2}, Lcom/miui/notes/ui/NoteEditText;->setIndex(I)V

    .line 806
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/miui/notes/ui/NoteEditActivity;->getHighlightQueryResult(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 807
    return-object v2

    .line 798
    :cond_1
    sget-object v3, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 800
    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setPaintFlags(I)V

    .line 801
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getWorkingText()Z
    .locals 7

    .prologue
    .line 839
    const/4 v1, 0x0

    .line 840
    .local v1, hasChecked:Z
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v5}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 843
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 844
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0d0021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/ui/NoteEditText;

    .line 845
    .local v0, edit:Lcom/miui/notes/ui/NoteEditText;
    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 846
    const v5, 0x7f0d0020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 847
    sget-object v5, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const/4 v1, 0x1

    .line 842
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 850
    :cond_1
    sget-object v5, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 854
    .end local v0           #edit:Lcom/miui/notes/ui/NoteEditText;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/notes/model/WorkingNote;->setWorkingText(Ljava/lang/String;)V

    .line 858
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return v1

    .line 856
    :cond_3
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/notes/model/WorkingNote;->setWorkingText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 336
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 337
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 338
    aget v1, v0, v4

    .line 339
    .local v1, x:I
    aget v2, v0, v3

    .line 340
    .local v2, y:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v6, v1

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    :cond_0
    move v3, v4

    .line 346
    :cond_1
    return v3
.end method

.method private initActivityState(Landroid/content/Intent;)Z
    .locals 14
    .parameter

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    .line 174
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p1, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 176
    const-string v2, ""

    iput-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    .line 181
    const-string v2, "intent_extra_data_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const-string v0, "intent_extra_data_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 183
    const-string v2, "user_query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    .line 184
    const-string v2, "NoteEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++++++++++++++ The user query string is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1, v6}, Lcom/miui/notes/tool/DataUtils;->visibleInNoteDatabase(Landroid/content/ContentResolver;JI)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    const v0, 0x7f09003a

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V

    .line 191
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    move v0, v6

    .line 249
    :goto_0
    return v0

    .line 194
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/miui/notes/model/WorkingNote;->load(Landroid/content/Context;J)Lcom/miui/notes/model/WorkingNote;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    .line 195
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    if-nez v2, :cond_2

    .line 196
    const-string v2, "NoteEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load note failed with note id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    move v0, v6

    .line 198
    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0, p0}, Lcom/miui/notes/model/WorkingNote;->setOnSettingStatusChangedListener(Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;)V

    .line 249
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_3
    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 206
    const-string v0, "com.miui.notes.folder_id"

    invoke-virtual {p1, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 207
    const-string v0, "com.miui.notes.widget_id"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 209
    const-string v0, "com.miui.notes.widget_type"

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 211
    const-string v0, "com.miui.notes.background_color_id"

    invoke-static {p0}, Lcom/miui/notes/tool/ResourceParser;->getDefaultBgId(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 215
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 216
    const-string v0, "com.miui.notes.call_date"

    invoke-virtual {p1, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 217
    cmp-long v0, v8, v12

    if-eqz v0, :cond_7

    if-eqz v7, :cond_7

    .line 218
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    const-string v0, "NoteEditActivity"

    const-string v10, "The call record number is null"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7, v8, v9}, Lcom/miui/notes/tool/DataUtils;->getNoteIdByPhoneNumberAndCallDate(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v0, v10, v12

    if-lez v0, :cond_5

    .line 224
    invoke-static {p0, v10, v11}, Lcom/miui/notes/model/WorkingNote;->load(Landroid/content/Context;J)Lcom/miui/notes/model/WorkingNote;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    .line 225
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    if-nez v0, :cond_6

    .line 226
    const-string v0, "NoteEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load call note failed with note id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    move v0, v6

    .line 228
    goto/16 :goto_0

    :cond_5
    move-object v0, p0

    .line 231
    invoke-static/range {v0 .. v5}, Lcom/miui/notes/model/WorkingNote;->createEmptyNote(Landroid/content/Context;JIII)Lcom/miui/notes/model/WorkingNote;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    .line 233
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0, v7, v8, v9}, Lcom/miui/notes/model/WorkingNote;->convertToCallNote(Ljava/lang/String;J)V

    .line 240
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_1

    :cond_7
    move-object v0, p0

    .line 236
    invoke-static/range {v0 .. v5}, Lcom/miui/notes/model/WorkingNote;->createEmptyNote(Landroid/content/Context;JIII)Lcom/miui/notes/model/WorkingNote;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    goto :goto_2

    .line 244
    :cond_8
    const-string v0, "NoteEditActivity"

    const-string v1, "Intent not specified action, should not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    move v0, v6

    .line 246
    goto/16 :goto_0
.end method

.method private initNoteScreen()V
    .locals 6

    .prologue
    .line 259
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v3}, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->getTexAppearanceResource(I)I

    move-result v3

    invoke-virtual {v2, p0, v3}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 261
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 262
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/notes/ui/NoteEditActivity;->switchToListMode(Ljava/lang/String;)V

    .line 267
    :goto_0
    sget-object v2, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 268
    .local v1, id:Ljava/lang/Integer;
    sget-object v2, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 264
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/miui/notes/ui/NoteEditActivity;->getHighlightQueryResult(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 270
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mHeadViewPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getTitleBgResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 271
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditorPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getBgColorResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 273
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v2, v2, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvModified:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getModifiedDate()J

    move-result-wide v3

    const v5, 0x20015

    invoke-static {p0, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->showAlertHeader()V

    .line 279
    return-void
.end method

.method private initResources()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 350
    const v4, 0x7f0d0004

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mHeadViewPanel:Landroid/view/View;

    .line 351
    new-instance v4, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;-><init>(Lcom/miui/notes/ui/NoteEditActivity;Lcom/miui/notes/ui/NoteEditActivity$1;)V

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    .line 352
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const v4, 0x7f0d0005

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvModified:Landroid/widget/TextView;

    .line 353
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const v4, 0x7f0d0006

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ivAlertIcon:Landroid/widget/ImageView;

    .line 354
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const v4, 0x7f0d0007

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    .line 355
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const v4, 0x7f0d000b

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ibSetBgColor:Landroid/widget/ImageView;

    .line 356
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v4, v4, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ibSetBgColor:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v4, 0x7f0d0009

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    .line 358
    const v4, 0x7f0d0008

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditorPanel:Landroid/view/View;

    .line 359
    const v4, 0x7f0d000c

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    .line 360
    sget-object v4, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 361
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 362
    .local v2, iv:Landroid/widget/ImageView;
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 365
    .end local v1           #id:I
    .end local v2           #iv:Landroid/widget/ImageView;
    :cond_0
    const v4, 0x7f0d0017

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    .line 366
    sget-object v4, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 367
    .restart local v1       #id:I
    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 368
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 370
    .end local v1           #id:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 371
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "pref_font_size"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    .line 377
    iget v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {}, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->getResourcesSize()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 378
    iput v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    .line 380
    :cond_2
    const v4, 0x7f0d000a

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    .line 381
    return-void
.end method

.method private isSyncMode()Z
    .locals 1

    .prologue
    .line 642
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeShortcutIconTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "content"

    .prologue
    const/16 v2, 0xa

    .line 913
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 914
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 915
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1
.end method

.method private saveNote()Z
    .locals 2

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWorkingText()Z

    .line 863
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->saveNote()Z

    move-result v0

    .line 864
    .local v0, saved:Z
    if-eqz v0, :cond_0

    .line 872
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->setResult(I)V

    .line 874
    :cond_0
    return v0
.end method

.method private sendTo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 601
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 605
    return-void
.end method

.method private sendToDesktop()V
    .locals 5

    .prologue
    .line 883
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 888
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 889
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 890
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    const-string v2, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 892
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 893
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/notes/ui/NoteEditActivity;->makeShortcutIconTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f020018

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 897
    const-string v1, "duplicate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 898
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const v1, 0x7f090032

    invoke-direct {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V

    .line 900
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 910
    :goto_0
    return-void

    .line 907
    :cond_1
    const-string v0, "NoteEditActivity"

    const-string v1, "Send to desktop error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const v0, 0x7f09003c

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V

    goto :goto_0
.end method

.method private setReminder()V
    .locals 3

    .prologue
    .line 587
    new-instance v0, Lmiui/app/DateTimePickerDialog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lmiui/app/DateTimePickerDialog;-><init>(Landroid/content/Context;J)V

    .line 588
    .local v0, d:Lmiui/app/DateTimePickerDialog;
    new-instance v1, Lcom/miui/notes/ui/NoteEditActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/notes/ui/NoteEditActivity$2;-><init>(Lcom/miui/notes/ui/NoteEditActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/DateTimePickerDialog;->setOnDateTimeSetListener(Lmiui/app/DateTimePickerDialog$OnDateTimeSetListener;)V

    .line 593
    invoke-virtual {v0}, Lmiui/app/DateTimePickerDialog;->show()V

    .line 594
    return-void
.end method

.method private showAlertHeader()V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v7, 0x0

    .line 282
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->hasClockAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 284
    .local v2, time:J
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getAlertDate()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ivAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    .end local v2           #time:J
    :goto_1
    return-void

    .line 287
    .restart local v2       #time:J
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v6, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getAlertDate()J

    move-result-wide v0

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    .end local v2           #time:J
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ivAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 920
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(II)V

    .line 921
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 924
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 925
    return-void
.end method

.method private switchToListMode(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 741
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 742
    const-string v6, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, items:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 744
    .local v2, index:I
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    .line 745
    .local v3, item:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 746
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v2}, Lcom/miui/notes/ui/NoteEditActivity;->getListItem(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 747
    add-int/lit8 v2, v2, 0x1

    .line 744
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    .end local v3           #item:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    const-string v7, ""

    invoke-direct {p0, v7, v2}, Lcom/miui/notes/ui/NoteEditActivity;->getListItem(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 755
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0d0021

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 757
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 758
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 759
    return-void
.end method

.method private updateWidget()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getWidgetType()I

    move-result v1

    if-nez v1, :cond_0

    .line 438
    const-class v1, Lcom/miui/notes/widget/NoteWidgetProvider_2x;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 446
    :goto_0
    const-string v1, "appWidgetIds"

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v4}, Lcom/miui/notes/model/WorkingNote;->getWidgetId()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 450
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 451
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/notes/ui/NoteEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 452
    :goto_1
    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getWidgetType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 440
    const-class v1, Lcom/miui/notes/widget/NoteWidgetProvider_4x;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 442
    :cond_1
    const-string v0, "NoteEditActivity"

    const-string v1, "Unspported widget type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateWorkingTextAnyWay()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 401
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v7}, Lcom/miui/notes/model/WorkingNote;->getTextDataId()J

    move-result-wide v0

    .line 402
    .local v0, dataId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-nez v7, :cond_1

    .line 403
    const-string v7, "NoteEditActivity"

    const-string v8, "Text data without note id"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 409
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 426
    :cond_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 427
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "content"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 431
    const-string v7, "NoteEditActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Note data was saved any way with length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_3
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    .line 411
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 412
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 413
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0d0021

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/notes/ui/NoteEditText;

    .line 414
    .local v2, edit:Lcom/miui/notes/ui/NoteEditText;
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 415
    const v7, 0x7f0d0020

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 416
    sget-object v7, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 418
    :cond_5
    sget-object v7, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 423
    .end local v2           #edit:Lcom/miui/notes/ui/NoteEditText;
    .end local v3           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_6
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Wrong note editor state"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 321
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lcom/miui/notes/ui/NoteEditActivity;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :goto_0
    return v0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lcom/miui/notes/ui/NoteEditActivity;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->clearSettingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 489
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackgroundColorChanged()V
    .locals 2

    .prologue
    .line 505
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getBgColorId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditorPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getBgColorResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 508
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mHeadViewPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getTitleBgResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 509
    return-void
.end method

.method public onCheckListModeChanged(II)V
    .locals 4
    .parameter "oldMode"
    .parameter "newMode"

    .prologue
    .line 825
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->switchToListMode(Ljava/lang/String;)V

    .line 836
    :goto_0
    return-void

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWorkingText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/notes/model/WorkingNote;->setWorkingText(Ljava/lang/String;)V

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/miui/notes/ui/NoteEditActivity;->getHighlightQueryResult(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 457
    .local v0, id:I
    const v1, 0x7f0d000b

    if-ne v0, v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 459
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getBgColorId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getBgColorId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/notes/model/WorkingNote;->setBgColorId(I)V

    .line 465
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 466
    :cond_2
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    iget v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 468
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    .line 469
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_font_size"

    iget v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 470
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    iget v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 472
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWorkingText()Z

    .line 473
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->switchToListMode(Ljava/lang/String;)V

    .line 478
    :goto_1
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 475
    :cond_3
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v2}, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->getTexAppearanceResource(I)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public onClockAlertChanged(JZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 651
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/AlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 657
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 658
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 659
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->showAlertHeader()V

    .line 660
    if-nez p3, :cond_1

    .line 661
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 674
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 671
    :cond_2
    const-string v0, "NoteEditActivity"

    const-string v1, "Clock alert setting error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const v0, 0x7f09003b

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->setContentView(I)V

    .line 143
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->initActivityState(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->initResources()V

    goto :goto_0
.end method

.method public onEditTextDelete(ILjava/lang/String;)V
    .locals 7
    .parameter "index"
    .parameter "text"

    .prologue
    const v6, 0x7f0d0021

    .line 683
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 687
    .local v0, childCount:I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 715
    :goto_0
    return-void

    .line 694
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 695
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/notes/ui/NoteEditText;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Lcom/miui/notes/ui/NoteEditText;->setIndex(I)V

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 702
    :cond_1
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, edit:Lcom/miui/notes/ui/NoteEditText;
    if-nez p1, :cond_2

    .line 705
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #edit:Lcom/miui/notes/ui/NoteEditText;
    check-cast v1, Lcom/miui/notes/ui/NoteEditText;

    .line 711
    .restart local v1       #edit:Lcom/miui/notes/ui/NoteEditText;
    :goto_2
    invoke-virtual {v1}, Lcom/miui/notes/ui/NoteEditText;->length()I

    move-result v3

    .line 712
    .local v3, length:I
    invoke-virtual {v1, p2}, Lcom/miui/notes/ui/NoteEditText;->append(Ljava/lang/CharSequence;)V

    .line 713
    invoke-virtual {v1}, Lcom/miui/notes/ui/NoteEditText;->requestFocus()Z

    .line 714
    invoke-virtual {v1, v3}, Lcom/miui/notes/ui/NoteEditText;->setSelection(I)V

    goto :goto_0

    .line 708
    .end local v3           #length:I
    :cond_2
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #edit:Lcom/miui/notes/ui/NoteEditText;
    check-cast v1, Lcom/miui/notes/ui/NoteEditText;

    .restart local v1       #edit:Lcom/miui/notes/ui/NoteEditText;
    goto :goto_2
.end method

.method public onEditTextEnter(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0d0021

    .line 722
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 723
    const-string v0, "NoteEditActivity"

    const-string v1, "Index out of mEditTextList boundrary, should not happen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/miui/notes/ui/NoteEditActivity;->getListItem(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 728
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/ui/NoteEditText;

    .line 729
    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->requestFocus()Z

    .line 730
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setSelection(I)V

    .line 731
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/ui/NoteEditText;

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setIndex(I)V

    .line 731
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 735
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 301
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NoteEditActivity;->initActivityState(Landroid/content/Intent;)Z

    .line 302
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 539
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 583
    :goto_0
    :pswitch_0
    return v2

    .line 541
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->createNewNote()V

    goto :goto_0

    .line 544
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 545
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 546
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 547
    const v1, 0x7f090036

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 548
    const v1, 0x104000a

    new-instance v3, Lcom/miui/notes/ui/NoteEditActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/notes/ui/NoteEditActivity$1;-><init>(Lcom/miui/notes/ui/NoteEditActivity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    const/high16 v1, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 560
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 561
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    iget v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 564
    :pswitch_4
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/miui/notes/model/WorkingNote;->setCheckListMode(I)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 568
    :pswitch_5
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWorkingText()Z

    .line 569
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->sendTo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :pswitch_6
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->sendToDesktop()V

    goto :goto_0

    .line 575
    :pswitch_7
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->setReminder()V

    goto :goto_0

    .line 578
    :pswitch_8
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Lcom/miui/notes/model/WorkingNote;->setAlertDate(JZ)V

    goto/16 :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x7f0d002d
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 386
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "NoteEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Note data was saved with length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->clearSettingState()Z

    .line 394
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->updateWorkingTextAnyWay()V

    .line 395
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0d002f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 513
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return v4

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->clearSettingState()Z

    .line 518
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 519
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getFolderId()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 524
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 525
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090027

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 529
    :goto_2
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->hasClockAlert()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    const v0, 0x7f0d0032

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 527
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090026

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 532
    :cond_3
    const v0, 0x7f0d0033

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 156
    if-eqz p1, :cond_1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.UID"

    const-string v2, "android.intent.extra.UID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 159
    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->initActivityState(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 166
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 163
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "NoteEditActivity"

    const-string v2, "Restoring from killed activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 255
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->initNoteScreen()V

    .line 256
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 315
    :cond_0
    const-string v0, "android.intent.extra.UID"

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 316
    const-string v0, "NoteEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save working note id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method public onTextChange(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0d0020

    .line 812
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 813
    const-string v0, "NoteEditActivity"

    const-string v1, "Wrong index, should not happen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_0
    return-void

    .line 816
    :cond_0
    if-eqz p2, :cond_1

    .line 817
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onWidgetChanged()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->updateWidget()V

    .line 679
    return-void
.end method
