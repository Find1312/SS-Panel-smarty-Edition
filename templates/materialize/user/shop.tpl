<!DOCTYPE html>
<html lang="zh-cn">
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
<meta name="theme-color" content="#293696">
<{include file='source.tpl'}>
<title>商店 -<{$site_name}></title>
<{include file='user/header.tpl'}>
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">商店<small>Shop</small></h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<p>现在充值喵币更划算哦~</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12 col-sm-12">
					<h2 class="content-sub-heading"></h2>
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<{if count($plan_A)!=null}>
									<{foreach $plan_A as $rs}>
										<div class="col-lg-4 col-sm-12">
										    <div class="card">
								                <aside class="card-side pull-left">
									                <span class="card-heading"><i class="icon icon-lg">extension</i></span>
								                </aside>
								                <div class="card-main">
								                    <div class="card-inner">
								                        <p class="card-heading"><{$rs[ 'plan']}>-<{$rs[ 'plan_id']}></p>
										                <p>每个包含：<code><{$rs['data']}></code>天 <code><{if $rs['type'] == 'Ca'}> 高级<{else}>普通<{/if}></code> 账户 ,有效期内不限流量</p>
														<p>价格：<{$rs[ 'money']}>喵币</p>
                                                    </div>
									                <div class="card-action">
									                	<div class="card-action-btn pull-left">
															<div class="dropdown-wrap">
																<div class="dropdown dropdown-inline">
																	<a class="btn btn-flat waves-attach" data-toggle="dropdown">
																		<span class="icon icon-lg">add_shopping_cart</span>&nbsp;消费<{$rs[ 'money']}>喵币购买
																	</a>
																	<ul class="dropdown-menu nav">
																		<li>
																			<a class="waves-attach" href="<{$rs['url']}>" target="_blank">
																				<span class="icon icon-lg">payment</span>&nbsp;购买兑换码
																			</a>
																		</li>
																		<li>
																			<a class="waves-attach buy" id='<{$rs['id']}>' href="javascript:void(0)">
																				<span class="icon icon-lg">pets</span>&nbsp;喵币购买
																			</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
									                </div>
								                </div>
							                </div>
										</div>
									<{/foreach}>
								<{else}>
						    		<a class="btn btn-brand-accent waves-attach waves-light">无该类套餐信息</a>
								<{/if}>
							</div>
						</div>
					</div>
					<h2 class="content-sub-heading">流量加油站</h2>
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<{if count($plan_B)!=null}>
									<{foreach $plan_B as $rs}>
										<div class="col-lg-4 col-sm-12">
										    <div class="card">
								                <aside class="card-side pull-left">
									                <span class="card-heading"><i class="icon icon-lg">extension</i></span>
								                </aside>
								                <div class="card-main">
								                    <div class="card-inner">
								                        <p class="card-heading"><{$rs[ 'plan']}>-<{$rs[ 'plan_id']}></p>
										                <p>每个包含：<code><{if $rs['type'] == 'Ta'}>高级<{else}>普通<{/if}></code>节点流量 <code><{$rs['data']}></code>GB, 不清零，用完为止</p>
														<p>价格：<{$rs[ 'money']}>喵币</p>
                                                    </div>
									                <div class="card-action">
									                	<div class="card-action-btn pull-left">
															<div class="dropdown-wrap">
																<div class="dropdown dropdown-inline">
																	<a class="btn btn-flat waves-attach" data-toggle="dropdown">
																		<span class="icon icon-lg">add_shopping_cart</span>&nbsp;消费<{$rs[ 'money']}>喵币购买
																	</a>
																	<ul class="dropdown-menu nav">
																		<li>
																			<a class="waves-attach" href="<{$rs['url']}>" target="_blank">
																				<span class="icon icon-lg">payment</span>&nbsp;购买兑换码
																			</a>
																		</li>
																		<li>
																			<a class="waves-attach buy" id='<{$rs['id']}>' href="javascript:void(0)">
																				<span class="icon icon-lg">pets</span>&nbsp;喵币购买
																			</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
									                </div>
								                </div>
							                </div>
										</div>
									<{/foreach}>
								<{else}>
						    		<a class="btn btn-brand-accent waves-attach waves-light">无套餐信息</a>
								<{/if}>
							</div>
						</div>
					</div>
					<h2 class="content-sub-heading">余额充值</h2>
					<div class="card">
                        <div class="card-main">
                            <div class="card-inner">
								<{if count($plan_C)!=null}>
							        <{foreach $plan_C as $rs}>
							            <div class="col-lg-4 col-sm-12">
							                <div class="card">
								                <aside class="card-side pull-left">
									                <span class="card-heading"><i class="icon icon-lg">extension</i></span>
								                </aside>
								                <div class="card-main">
								                    <div class="card-inner">
								                        <p class="card-heading"><{$rs[ 'plan']}>-<{$rs[ 'plan_id']}></p>
										                <p>每个包含：喵币<code><{$rs[ 'data']}></code>个</p>
														<p>价格：<{$rs[ 'money']}>元</p>
                                                    </div>
									                <div class="card-action">
									                	<div class="card-action-btn pull-left">
															<div class="dropdown-wrap">
																<div class="dropdown dropdown-inline">
																	<a class="btn btn-flat waves-attach" href="<{$rs['url']}>" target="_blank">
																		<span class="icon icon-lg">payment</span>&nbsp;购买兑换码
																	</a>
																</div>
															</div>
														</div>
									                </div>
								                </div>
							                </div>
										</div>
									<{/foreach}>
								<{else}>
						    		<a class="btn btn-brand-accent waves-attach waves-light">无套餐信息</a>
								<{/if}>
							</div>
						</div>
					</div>
				</section>
			</div>
		</main>
	</body>
	<div aria-hidden="true" class="modal modal-va-middle fade" id="confirm" role="dialog" tabindex="-1">
        <div class="modal-dialog modal-xs">
            <div class="modal-content">
                <div class="modal-inner">
                    <div class="text-center">
                        <div class="modal-heading">
					        <p class="modal-title" id="msg_header"></p>
				        </div>
                        <div class="modal-inner">
					        <p class="h5 margin-top-sm text-black-hint" id="msg"></p>
				        </div>
                        <{include file='loading.tpl'}>
				    </div>
				    <div class="modal-footer">
				        <p class="text-right"><a  class="btn btn-flat btn-brand-accent waves-attach confirmed"></a><a id="back" class="btn btn-flat btn-brand-accent waves-attach" style="display:none;" data-dismiss="modal">返回</a></p>
			        </div>
                </div>
            </div>
        </div>
    </div>
    <script>
$('.buy').click(function(){
  
  id = $(this).attr('id');
  $('#loading').show();
  $('#confirm').modal();

  $.post('_buy.php', {method:'confirm','id':id},
    function(data){
        $('#loading').hide();
        $('#msg_header').html('支付信息');
        if(data['code']){
        $('.confirmed').html('确认支付');
        }
        else
            $('.confirmed').html('<img src="try.jpg" height="100px"/>谁都别管我！我就要试一试');
      
        $('#back').html('取消'); 
        $('.confirmed').attr('id', id);
        $('#msg').html(data['info']);}, 'JSON');
    })
    
$('.confirmed').click(function(){
    id = $(this).attr('id');
    $('#msg_header').html('正在确认支付');
    $('#loading').show();
    $.post('_buy.php', {method:'buy','id':id},
    function(data){
        $('#loading').hide();
        $('#msg_header').html('支付状态');
        if(data['code'])//支付成功
        {
            
            $('.confirmed').html('再买一次');
        }
        else
        {
            $('.confirmed').html('我已经充值了，再试一次');
        }
        $('#back').show();
        $('#msg').html(data['info']);
        
    }, 'JSON');
});
</script>
<{include file='../footer.tpl' }></html>
