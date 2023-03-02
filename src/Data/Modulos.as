package Data
{
	import ADMON.*;
	
	import CAPACITACION.*;
	
	import CATALOGOS.*;
	
	import CONTABILIDAD.*;
	
	import Controls.formPdf;
	
	import FONDEO.*;
	
	import GENERAL.*;
	
	import INCENTIVOS.*;
	
	import OPERAC.*;
	
	import PLD.*;
	
	import PRINCIPAL.*;
	
	import RECURSOS.*;
	
	import REPORTES.*;
	
	import TESORERIA.*;
	
	public class Modulos
	{
		//Modulos
		public var frm_1:UsuariosdelSistema;
		public var frm_2_1:TiposdeUsuario;	
		public var frm_9:AcreditadosdeGrupo;	
		public var frm_10:SolicituddeCreditoSolidario;	
		public var frm_11:formPdf;
		public var frm_12:EvaluaciondeCreditoComunal;
		public var frm_14:EntregadeCreditoComunal;
		public var frm_15:Localidades;
		public var frm_16:RegionalesySucursales;
		public var frm_18:PagosEsperadosFiltros;
		public var frm_19:ProductosdeCreditoyCiclos;
		public var frm_20:PagosNoIdentificados;
		public var frm_21:PagosIdentificados;
		public var frm_22:AgendaAsesores;
		public var frm_23:AntiguedaddeSaldos;
		public var frm_25:ControldeAhorros;
		public var frm_26:ControldeAsistencia;
		public var frm_27:SolicituddeCredito;
		public var frm_31:SolicituddeCreditoComunitario;
		public var frm_36:ControlSemanalImpreso;
		public var frm_38:CierredeDia;
		public var frm_40:SeguimientoMensual;
		public var frm_46:OrdenesdePagoenVentanilla;
		public var frm_47:DispersionReferenciada;
		public var frm_51:Acreditadosindividuales;
		public var frm_52:ExcepcionesGL;
		public var frm_53:Prestamos;
		public var frm_54:CausasdeRechazo;
		public var frm_55:Correcciones;
		public var frm_56:BitacoradeOperacion;
		public var frm_57:PlandePagos;
		public var frm_58:REPORTES.Operaciones;
		public var frm_59:EntregaMasivadePrestamos;
		public var frm_60:Prefondeo;
		public var frm_61:AdministraciondeChequeras;
		public var frm_62:ImpresiondeCheques;
		public var frm_63:CancelaciondeCheques;
		public var frm_64:CancelaciondeChequesPreimpresos;
		public var frm_65:ChequesCancelados;
		public var frm_66:ProtecciondeCheques;
		public var frm_67:ControlSemanalGrupal;
		public var frm_68:AgendaAsesoresReunion;
		public var frm_69:AutorizacionparaPagoconGL;
		public var frm_70:DevoluciondeGarantia;
		public var frm_72:ModificaciondeMesaDirectiva;
		public var frm_74:ReimpresiondeChequesExc;
		public var frm_75:InstrumentosdeCredito;
		public var frm_76:ChequesImpresos;
		public var frm_77:ConciliaciondeGarantiaLiquida;
		public var frm_78:SaldosalCierre;
		public var frm_79:AjustesManuales;
		public var frm_80:RegistrodeAjustes;
		public var frm_81:InteresDevengado;
		public var frm_82:CifrasControlContabilidad;
		public var frm_83:CifrasControlOperaciones;
		public var frm_84:DevoluciondePrestamo;
		public var frm_85:DetalledeControlSemanal;
		public var frm_86:Clientes;
		public var frm_87:EstadodeCuentaGrupal;
		public var frm_88:OrganizacionesFondeadoras;
		public var frm_89:AsignaciondeFondeo;
		public var frm_90:OPERAC.ControldePagos;
		public var frm_91:AsignacionIndividualdeFondeo;
		public var frm_92:EmisiondeDocumentos;
		public var frm_94:ControldePagosGrupal;
		public var frm_95:ControldePagosdeIntegrantes;
		public var frm_96:ControldePagosIndividual;
		public var frm_97:ListaNegradeAcreditados;
		public var frm_98:Excepciones;
		public var frm_99:SaldosalCierredeAcreditado;
		public var frm_100:REPORTES.HistoricodePrestamosAcreditado;
		public var frm_101:CirculodeCredito;
		public var frm_102:Inconsistencias;
		public var frm_103:REPORTES.ControldePagos;
		public var frm_104:SaldosPromedio;
		public var frm_105:ReportedeAsignaciondeFondeo;
		public var frm_106:SituaciondeControldePagosGrupal;
		public var frm_107:PlandePagosIndividual;
		public var frm_108:ResumendeControldePagosGrupal;
		public var frm_109:ListaNegra;
		public var frm_110:ControldePagosFechaRegistro;
		public var frm_111:ReportedeClientesdeFondeo;
		public var frm_112:ReportedeCreditosdeFondeo;
		public var frm_113:AnalisisdeAlertas;
		public var frm_115:FichadeAcreditado;
		public var frm_116:ImpresiondeRepdeCredito;
		public var frm_117:CierredeAsignaciondeFondeo;
		public var frm_118:CargaArchivoAsignaciondeFondeo;
		public var frm_119:ClientesNuevosyRenovacion;
		public var frm_120:ClientesDesercion;
		public var frm_121:ActaparaComitedeCredito;
		public var frm_122:ConsultasCirculoCredito;
		public var frm_123:SaldosalCierreControldePagos;
		public var frm_124:CreditosCastigados;
		public var frm_125:Solicitudes;
		public var frm_126:CuentasBancarias;
		public var frm_127:SolicituddeCreditoIndividual;
		public var frm_128:EvaluaciondeCreditoIndividual;
		public var frm_129:EntregadeCreditoIndividual;
		public var frm_130:SituaciondeCartera;
		public var frm_131:TasaReal;
		public var frm_132:ImpresiondeChequesIndividuales;
		public var frm_133:EstadodeCuentaIndividual;
		public var frm_134:EmisiondeDocumentosIndividuales;
		public var frm_136:ModificaciondeTasadeInteres;
		public var frm_137:Indicadores;
		public var frm_138:CarteraVencida;
		public var frm_139:SolicituddeCreditoOportuno;
		public var frm_140:EvaluaciondeCreditoOportuno;
		public var frm_141:EntregadeCreditoOportuno;
	 	public var frm_142:DevoluciondeExcedente;
	 	public var frm_143:RegistrodeDevoluciondeExcedente;
	 	public var frm_144:ReimpresiondeCheques;
	 	public var frm_145:InformaciondeRecursos;
	 	public var frm_146:InformacionPersonal;
	 	public var frm_147:IdentificaciondeAcreditados;
	 	public var frm_149:InformaciondeIncentivos;
	 	public var frm_150:AsignaciondeConvenios;
	 	public var frm_151:AsignaciondeMetas;
	 	public var frm_152:InformaciondeConveniosyMetas;
	 	public var frm_153:MovimientosdeGarantia;
	 	public var frm_154:SeguimientodeChequeras;
	 	public var frm_155:CorreccionesporAcreditado;
	 	public var frm_156:ReportedeConsultasPEP;
	 	public var frm_157:Microseguros;
	 	public var frm_158:ParametrosPLD;
	 	public var frm_159:SeguimientodeMovimientos;
	 	public var frm_160:PLD.HistoricodePrestamosdeAcreditado;
	 	public var frm_161:FichadeAcreditado;
	 	public var frm_162:HistoricodeReportesdeCredito;
	 	public var frm_163:ModificaciondeChequesAsignados;
	 	public var frm_164:CapturadeSolicitudes;
	 	public var frm_165:TarjetadePagos;
	 	public var frm_166:SituaciondeCheques;
	 	public var frm_167:SaldosalCierreMacro;
	 	public var frm_168:SituacionCarteraHistorico;
	 	public var frm_169:Referencias;
	 	public var frm_170:SolicituddeCreditoComunal;
	 	public var frm_171:EvaluaciondeCreditoSolidario;
	 	public var frm_172:EntregadeCreditoSolidario;
	 	public var frm_173:RegistrodeAclaracionesdeIncentivos;
	 	public var frm_174:CargadeEstadosdeCuenta;
	 	
	 	public var frm_176:ConciliaciondeCheques;
	 	public var frm_177:ReportedeConciliaciondeCheques;
	 	public var frm_178:ReportedeSaldosDiarios;
	 	public var frm_179:BajadeConciliaciondeCheques;
	 	public var frm_180:BajadeEstadosdeCuenta;
	 	public var frm_181:ReportedeEstadosdeCuenta;
	 	public var frm_182:ReporteHistoricodeCheque;
	 	
	 	public var frm_183:ParametrosdeSIC;
	 	public var frm_184:PrefondeodeMicroseguros;
	 	public var frm_185:BonosdeMicroseguros;
	 	public var frm_186:Defunciones;
	 	public var frm_187:RegistrodeDefunciones;
	 	public var frm_188:ImpresiondeChequesdeDefuncion;
	 	
	 	public var frm_191:ProductosdeMicroseguro;
	 	
	 	public var frm_192:CargaArchivoEstimacion;
	 	public var frm_193:ReportesdeABC;
	 	public var frm_194:ReportesdePronafim;
	 	
	 	public var frm_195:CalificaciondeAcreditadoABC;
		public var frm_196:ParametrosdeMarcadoABC;
		public var frm_197:AsignaciondeFondeoABC;
		public var frm_198:MarcadodeFondeoFinal;
		public var frm_199:BajaArchivoAsignacionFondeo;
		public var frm_200:CargadeEstadosdeCuenta;
		//public var frm_201:ReportedeCosechas;
		
		public var frm_201:Aseguradoras;
		
		public var frm_202:ParametrosPLD;
	 	public var frm_203:ReportedeConsultasPEP;
	 	public var frm_204:ReporteHistoricodeAlertas;
	 	public var frm_205:IdentificaciondeAcreditados;
	 	
	 	public var frm_206:ProrrateodeConsultas;
	 	
	 	public var frm_207:SimuladordeCobro;
	 	
	 	public var frm_208:ReportedeOperacionesCNBV;
	 	
	 	public var frm_209:VigenciasdeSeguro;
	 	public var frm_210:CancelaciondeMicroseguros;
	 	
	 	public var frm_211:Direcciones;
	 	
	 	public var frm_212:FormatosdeMicroseguros;
	 	
	 	public var frm_213:InformeAnalisisporAsesor;
	 	
	 	public var frm_214:EliminaciondePagosporCuenta;
	 	
	 	public var frm_215:InformedeIndicadores;
	 	
	 	public var frm_216:ClientesSDI;
	 	
	 	public var frm_217:Cosechas;
	 	
	 	public var frm_219:CastigosFondeo;
	 	
	 	public var frm_220:ReportedeConciliaciondeChequesMensual;
	 	
	 	public var frm_221:EliminaciondeControldePagos;
	 	
	 	public var frm_222:CargaArchivoMarcadodeCartera;
	 	
	 	public var frm_223:EndososdePronafim;
	 	
	 	public var frm_224:InformeGruposporAsesor;
	 	public var frm_225:InformeIndicadoresPromAnual;
	 	public var frm_226:InformeIndicadoresPromMensual;
	 	public var frm_227:ParametrosdeChequesCobradosMensual;
	 	public var frm_228:ReportedeComisionesDistribuidasMensual;
	 	public var frm_229:ReportedeInventariodeChequeras;
	 	
	 	public var frm_230:RegistrodeDiagnosticos;
		public var frm_231:ImpresiondeChequesdeDiagnostico;
		public var frm_232:Diagnosticos;
		public var frm_233:EliminaciondeAjustes;
		public var frm_234:CargaArchivoSueldos;
		public var frm_236:ParametrosPolizaComisionesPagos;
		public var frm_237:ParametrosPolizaGastosporInteres;
		public var frm_238:PolizaComisionporPago;
		public var frm_239:PolizaGastosporInteres;
		public var frm_240:ReportesdeFinancieraNacional;
		public var frm_241:AsignaciondeFondeoFinanciera;
		public var frm_242:AsignacionIndividualdeFondeoFinanciera;
		public var frm_243:ParametrosdeMarcadoFinanciera;
		public var frm_244:ExcepcionesyRechazos;
		public var frm_245:CalculodeIncentivos;
		public var frm_246:ChequesnoNegociables;
		public var frm_247:CarteraenRiesgo;
		public var frm_248:AsignaciondeFondeoBajio;
		public var frm_249:AsignacionIndividualdeFondeoBajio;
		public var frm_250:ParametrosdeMarcadoBajio;
		public var frm_251:ReportesdeBajio;
		public var frm_252:ValidacionFira;
		public var frm_253:AsignaciondeFondeoBansefi;
		public var frm_254:AsignacionIndividualdeFondeoBansefi;
		public var frm_255:ParametrosdeMarcadoBansefi;
		public var frm_256:ReportesdeBansefi;
		public var frm_257:InformeIndicadoresPromMensualSuc;
		public var frm_258:InformeIndicadoresPromAnualSuc;
		public var frm_259:SaldosalCierreEspecial;
		public var frm_260:SaldosalCierredeAcreditadoEspecial;
		public var frm_261:EndososdeFinancieraNacional;
		public var frm_262:RegistrodeAcuerdos;
		public var frm_263:ClientesCapturados;
		public var frm_264:DetalledeClientesNuevos;
		public var frm_265:CargaArchivoRenovacAnticipadas;
		
		public var frm_266:AsignaciondeFondeoBankaool;
		public var frm_267:AsignacionIndividualdeFondeoBankaool;
		public var frm_268:ParametrosdeMarcadoBankaool;
		public var frm_269:ReportesdeBankaool;
		
		public var frm_270:CargaArchivoExclusionCirculo;
		public var frm_271:EndososdeBansefi;
		
		public var frm_272:CarteraenRiesgoMensual;
		public var frm_273:CarteraenRiesgoComparativoMensual;
		public var frm_274:CarteraenRiesgoComparativo;
		public var frm_275:InformedeIndicadoresMensual;
		public var frm_276:SaldosalCierreMensual;
		public var frm_277:SaldosalCierredeAcreditadoMensual;
		public var frm_278:PagosEsperadosConDiferencia;
		
		public var frm_279:CriteriosdeRiesgo;
		public var frm_280:ReportedeOperacionesFraccionadas;
		public var frm_281:ReportedeOperacionesIndPorMonto;
		public var frm_282:HistoricodePrestamosdeAcreditado;
		public var frm_283:CreditosVendidos;
		public var frm_284:CumpleanosdeAcreditados;
		public var frm_285:EliminacionTemporaldePagos;
		public var frm_286:MonitordeIncentivos;
		
		public var frm_287:SeguimientodeVehiculo;
		public var frm_288:ReportedeSeguimientodeVehiculo;
		public var frm_289:InformedeIncentivos;
		public var frm_290:InformeMetasporAsesor;
		public var frm_291:FacturaFideicomisos;
		public var frm_292:ReportedeKilometraje;
		
		public var frm_293:CargaArchivoCrecimiento;
		public var frm_295:ResumendeSeguimientodeVehiculos;
		public var frm_296:CargaArchivoMetasporAsesor;
		
		public var frm_297:DevolucionDespuesdePagos;
		public var frm_298:SimuladordeIncentivos;
		public var frm_299:MonitordeIncentivosGerentes;
		public var frm_300:SaldoPromedioMensual;
		
		public var frm_294:ParametrosdeIncentivos;
		public var frm_301:ParametrosdeIncentivosMora;
		public var frm_302:ParametrosdeIncentivosPagos;
		public var frm_303:ParametrosdeIncentivosCartera;
		
		public var frm_304:CargaArchivoMetasColocacion;
		public var frm_305:OPERAC.LiquidacionconGarantia;
		public var frm_306:REPORTES.LiquidacionconGarantia;
		
		public var frm_310:Programas;
		public var frm_311:Consultorias;
		public var frm_312:Instructores;
		public var frm_313:Modalidades;
		public var frm_314:TipoCapacitacion;
		public var frm_315:Niveles;
		public var frm_316:TipoParticipante;
		public var frm_317:Cursos;
		public var frm_318:CargaArchivoCapacitacion;
		public var frm_319:BajaArchivoCapacitacion;
		public var frm_320:CargaInvitacionCapacitacion;
		public var frm_321:BajaInvitacionCapacitacion;
		
		public var frm_322:Convenios;
		public var frm_323:Adicionales;
		public var frm_324:GruposExcluidosPenalizacion;
		public var frm_325:DescuentodeMora;
		public var frm_326:PonderacionIncentivoTotal;
		public var frm_327:AplicaciondePagosExtra;
		
		public var frm_328:PolizadeDesembolsos;
		public var frm_329:PolizadePagos;
		public var frm_330:EliminaciondeCierre;
		
		public var frm_331:SolicituddeCreditoAdicional;
		public var frm_332:EvaluaciondeCreditoAdicional;
		public var frm_333:EntregadeCreditoAdicional;
		public var frm_334:RegistrodePagosPayCash;
		
		public var frm_335:REPORTES.ChequesdeDesembolso;
		public var frm_336:PolizadePagosPaycash;
		public var frm_337:CreditosAutorizados;
		public var frm_338:PolizadePagosMensual;
		public var frm_339:PolizadeDesembolsosMensual;
		public var frm_340:PolizadePagosPaycashMensual;
		public var frm_341:PolizadePagosFecha;
		public var frm_342:PolizadeDesembolsosFecha;
		public var frm_343:PolizadePagosPaycashFecha;
		public var frm_344:ReasignaciondeCartera;
		public var frm_345:ConciliaciondeMicroseguros;
		public var frm_346:TransferenciasRegistradas;

		public function Modulos()
		{
		}
	}
}