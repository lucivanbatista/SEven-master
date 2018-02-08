<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.ufc.pet.evento.Evento" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
    <%@include file="../ErroAutenticacaoUser.jsp" %>
    <%
                Evento en = (Evento) session.getAttribute("evento");
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="shortcut icon" href="../imagens/favicon.png" type="image/x-icon"/> 
        <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>SEven</title> 
        <script language="javascript" src="../jquery/jquery-1.10.2.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript"  language="javascript" src="../Script.js"></script>
    </head>
    <body>
                 
        <div id="container">     
          <%-- Incluindo o Menu --%>
          <%@include file="admin_menu.jsp" %>  
           <div id="content">
             <%@include file="/error.jsp"%>   
             <div class="panel panel-default">
                <div class="panel-heading text-center"><%=en.getNome()%> <br> Dados do organizador</div>
                <div class="panel-body"> 
                       
            <form action="../ServletCentral" method="post">
                <input type="hidden" name="comando" value="CmdAddOrganizadorNovo"/>    
                <div class="row">   
                     <div class="col-lg-offset-1 col-lg-5 space-top">                 
                         <div class="pull-left text-uppercase label label-warning">* Campos obrigatórios</div><br/>
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Nome Completo" class="form-control" type="text" name="nome" placeholder="* Nome" maxlength="50" required />
                        </div>
                        
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Email" class="form-control" type="text" name="email"  placeholder="* E-mail"  maxlength="50" required />
                        </div>
                        
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Telefone" class="form-control" type="text" name="fone" onkeypress="return formataContato(this , event)"  placeholder="Telefone" maxlength="14" />
                        </div>
                        
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Data de Nascimento" class="form-control" type="text" name="data"  placeholder="Data de nascimento" maxlength="10" onkeypress="return formataData(this,event)"/>
                        </div>
                        
                        <div class="form-group">
                        <select class="form-control" name="sexo" id="sexo">
                            <option value="null" selected>Selecione o sexo</option>
                            <option value="femenino">Feminino</option>
                            <option value="masculino">Masculino</option>
                        </select>
                        </div>                    
                    
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Instituição" class="form-control" type="text"  placeholder="Instituição" maxlength="50" name="instituicao" />
                        </div>
                                 
                   
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Rua" class="form-control" type="text"  placeholder="* Rua" maxlength="50" name="rua" required />
                        </div>
                        
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Bairro" class="form-control" type="text"  placeholder="* Bairro" maxlength="50" name="bairro" required />
                        </div>                                                  
                </div>
                <div class="col-lg-5 space-top">  
                       <br/>
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Número" class="form-control" type="text"  placeholder="* Número" maxlength="6" name="numero" onkeypress="return validaNumerosSilencioso(event)" required />
                        </div>                     
                    
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Cidade" class="form-control" type="text"  placeholder="* Cidade" maxlength="50" name="cidade" required />
                        </div>                       
                  
                        <div class="form-group">
                            <input data-toggle="tooltip" title="UF" class="form-control" type="text"  placeholder="* UF" maxlength="50" name="uf" required />
                        </div>  
                     
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Senha" class="form-control" type="password"  placeholder="* Senha" maxlength="18" minlength="6" name="senha" required />
                        </div>
                        
                        <div class="form-group">
                            <input data-toggle="tooltip" title="Repita a Senha" class="form-control" type="password"  placeholder="* Digite a senha novamente" maxlength="18" minlength="6" name="confirmacaoSenha" required />
                        </div>
                        
                     <div class="panel panel-default">
                         <div class="panel-heading text-center">Permissões</div>
                       <div class="panel-body">  
                         <div class="col-lg-12"> 
                          <input type="checkbox" name="manterAtividade" class="chk_box"/> Manter Atividade<br/>
                          <input type="checkbox" name="manterModulo" class="chk_box"/> Manter Módulo Financeiro<br/>                 
                        </div>
                       </div> 
                         <input data-toggle="tooltip" title="Enviar" type="submit" value="Enviar" class="btn btn-default pull-right space-top" onclick="return confirmarCadastrado()"/>
                      </div>           
                  </div>                    
                </div>                    
               </form>
                    
              </div>
             </div>  
             <a href="" title=""  class="btn btn-default" onclick="history.back(); return false;" class="voltarCadastro">← Voltar</a>
             
           </div>
        </div>              
        <div class="footer-top">         
             <%@include file="../footer.jsp" %>
        </div>  
    </body>
</html>
