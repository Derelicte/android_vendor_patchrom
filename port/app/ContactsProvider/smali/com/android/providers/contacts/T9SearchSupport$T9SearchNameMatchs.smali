.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
.super Ljava/util/BitSet;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T9SearchNameMatchs"
.end annotation


# instance fields
.field public mLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    .line 198
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 201
    iput p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    .line 202
    return-void
.end method
